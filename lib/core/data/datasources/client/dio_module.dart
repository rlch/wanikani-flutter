import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:wanikani_flutter/config.dart';

@module
abstract class DioModule {
  const DioModule();

  @Named('baseUrl')
  String get baseUrl => 'https://api.wanikani.com/v2';

  @Named('assignmentsUrl')
  String get assignmentsUrl => '$baseUrl/assignments';
  @Named('summaryUrl')
  String get summaryUrl => '$baseUrl/summary';

  @lazySingleton
  Dio dio(@Named('baseUrl') String url) {
    final dio = Dio()
      ..interceptors.addAll([
        PrettyDioLogger(responseBody: false),
      ]);
    dio.options.headers
      ..['Wanikani-Revision'] = '20170710'
      ..['Authorization'] = 'Bearer $apiToken';
    return dio;
  }
}
