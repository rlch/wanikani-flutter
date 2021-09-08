import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:stash/stash_api.dart';
import 'package:stash_memory/stash_memory.dart';
import 'package:stash_sembast/stash_sembast.dart';
import 'package:wanikani_flutter/config.dart';
import 'package:stash_dio/stash_dio.dart';

@module
abstract class DioModule {
  const DioModule();

  static const bool shouldLog = false;

  @Named('baseUrl')
  String get baseUrl => 'https://api.wanikani.com/v2';

  @Named('assignmentsUrl')
  String get assignmentsUrl => '$baseUrl/assignments';
  @Named('subjectsUrl')
  String get subjectsUrl => '$baseUrl/subjects';
  @Named('summaryUrl')
  String get summaryUrl => '$baseUrl/summary';

  @preResolve
  Future<Dio> dio(@Named('baseUrl') String url) async {
    final dir = await getApplicationDocumentsDirectory();
    final cacheFile = File('${dir.path}/cache.db');

    /// final store = newSembastFileStore(file: cacheFile);

    final log = Logger();

    final dio = Dio()
      ..interceptors.addAll([
        newCacheInterceptor(
          '${RegExp.escape('api.wanikani.com/v2')}.*',
          newSembastFileCache(
            file: cacheFile,
            cacheName: 'cache',
            maxEntries: 100,
            evictionPolicy: LruEvictionPolicy(),
            eventListenerMode: EventListenerMode.synchronous,
          )..on<CreatedEntryEvent>().listen((e) {
              true ? log.d('Created ${e.entry.key} in file') : null;
            }),
        ),

        /// newTieredCacheInterceptor(
        ///   '${RegExp.escape('api.wanikani.com/v2')}.*',
        ///   newMemoryCache(
        ///     cacheName: 'memory',
        ///     maxEntries: 100,
        ///   )..on<CreatedEntryEvent>()
        ///       .listen((e) => shouldLog ? log.d('Created ${e.entry.key} in memory') : null),
        ///   newSembastFileCache(
        ///     file: cacheFile,
        ///     cacheName: 'cache',
        ///     maxEntries: 100,
        ///     evictionPolicy: LruEvictionPolicy(),
        ///     eventListenerMode: EventListenerMode.asynchronous,
        ///   )..on<CreatedEntryEvent>()
        ///       .listen((e) => true ? log.d('Created ${e.entry.key} in file') : null),
        /// ),
        if (shouldLog) PrettyDioLogger(responseHeader: true, responseBody: false),
      ]);
    dio.options.headers
      ..['Wanikani-Revision'] = '20170710'
      ..['Authorization'] = 'Bearer $apiToken';

    return dio;
  }
}
