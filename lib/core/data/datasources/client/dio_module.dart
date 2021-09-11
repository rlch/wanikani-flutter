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

const bool _shouldLog = false;

@module
abstract class DioModule {
  const DioModule();

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
    /// final log = Logger();

    final dio = Dio()
      ..interceptors.addAll([
        PrettyDioLogger(),
        newTieredCacheInterceptor(
          '${RegExp.escape('api.wanikani.com/v2')}.*',
          newMemoryCache(
            cacheName: 'memory',
            maxEntries: 100,
          )..on<CreatedEntryEvent>().listen((e) {}),
          newSembastFileCache(
            file: cacheFile,
            cacheName: 'cache',
            maxEntries: 1000,
            evictionPolicy: LruEvictionPolicy(),
            eventListenerMode: EventListenerMode.synchronous,
          )..on<CreatedEntryEvent>().listen((e) {}),
        ),
        if (_shouldLog) PrettyDioLogger(responseHeader: true, responseBody: false),
      ]);
    dio.options.headers
      ..['Wanikani-Revision'] = '20170710'
      ..['Authorization'] = 'Bearer $apiToken';

    return dio;
  }
}
