part of '../wanikani_services.dart';

@RestApi(baseUrl: '${WaniKaniServices.basePath}/summary/')
abstract class _Summary {
  factory _Summary(Dio dio) = __Summary;

  /// Retrieves a summary report.
  @GET('/')
  Future<Resource<Summary>> getReport();
}
