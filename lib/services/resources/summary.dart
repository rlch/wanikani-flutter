part of '../wanikani_services.dart';

@RestApi(baseUrl: 'https://api.wanikani.com/v2/summary/')
abstract class _Summary {
  factory _Summary(Dio dio) = __Summary;

  /// Retrieves a summary report.
  @GET('/')
  Future<Resource<Summary>> getReport();
}
