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
    print(cacheFile.lengthSync());

    final log = Logger();

    log.d('Instantiating Dio');

    log.i('${RegExp.escape(baseUrl).replaceAll('\/', '\\/')}/.*');

    final dio = Dio()
      ..interceptors.addAll([
        /// newCacheInterceptor(
        ///   '.*',
        ///   newMemoryCache(
        ///     cacheName: 'memory',
        ///     eventListenerMode: EventListenerMode.asynchronous,
        ///   )
        ///     ..on<CreatedEntryEvent>().listen((e) => log.d('Created ${e.entry.key} in file'))
        ///     ..on<RemovedEntryEvent>().listen((e) => log.d('Removed ${e.entry.key} in file'))
        ///     ..on<EvictedEntryEvent>().listen((e) => log.d('Evicted ${e.entry.key} in file'))
        ///     ..on<UpdatedEntryEvent>().listen((e) => log.d('Updated ${e.newEntry.key} in file')),
        /// ),

        newTieredCacheInterceptor(
          '.*wanikani.*',
          newMemoryCache(
            cacheName: 'memory',
            maxEntries: 100,
          )..on<CreatedEntryEvent>().listen((e) => log.d('Created ${e.entry.key} in memory')),
          newSembastFileStore(
            file: cacheFile,
          ).cache(
            cacheName: 'cache3',
            maxEntries: 100,
            evictionPolicy: LruEvictionPolicy(),
            eventListenerMode: EventListenerMode.asynchronous,
          )..on<CreatedEntryEvent>().listen((e) => log.d('Created ${e.entry.key} in file')),
        ),
        PrettyDioLogger(responseHeader: true, responseBody: false),
      ]);
    dio.options.headers
      ..['Wanikani-Revision'] = '20170710'
      ..['Authorization'] = 'Bearer $apiToken';

    return dio;
  }
}
