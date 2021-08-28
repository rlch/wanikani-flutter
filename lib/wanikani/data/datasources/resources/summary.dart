import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wanikani_flutter/wanikani/data/models/resource.dart';
import 'package:wanikani_flutter/wanikani/data/models/resources/summary.dart';
import 'package:wanikani_flutter/wanikani/services/wanikani_services.dart';

part 'summary.g.dart';

abstract class ISummaryDataSource {
  /// Retrieves a summary report.
  Future<ResourceModel<SummaryModel>> getReport();
}

@RestApi(baseUrl: '${WaniKaniServices.basePath}/summary/')
abstract class SummaryRemoteDataSource implements ISummaryDataSource {
  factory SummaryRemoteDataSource(Dio dio) = _SummaryRemoteDataSource;

  /// Retrieves a summary report.
  @GET('/')
  Future<ResourceModel<SummaryModel>> getReport();
}
