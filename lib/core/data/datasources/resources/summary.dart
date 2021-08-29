import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wanikani_flutter/core/data/datasources/constants.dart';
import 'package:wanikani_flutter/core/data/models/resource.dart';
import 'package:wanikani_flutter/core/data/models/resources/summary.dart';

part 'summary.g.dart';

abstract class ISummaryDataSource {
  /// Retrieves a summary report.
  Future<ResourceModel<SummaryModel>> getReport();
}

@RestApi(baseUrl: '$wanikaniApiBasePath/summary/')
abstract class SummaryRemoteDataSource implements ISummaryDataSource {
  factory SummaryRemoteDataSource(Dio dio) = _SummaryRemoteDataSource;

  /// Retrieves a summary report.
  @GET('/')
  Future<ResourceModel<SummaryModel>> getReport();
}
