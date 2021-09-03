import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wanikani_flutter/core/data/models/resource.dart';
import 'package:wanikani_flutter/core/data/models/resources/summary.dart';

part 'summary.g.dart';

abstract class ISummaryDataSource {
  /// Retrieves a summary report.
  Future<ResourceModel<SummaryModel>> getReport();
}

@LazySingleton()
@RestApi()
abstract class SummaryRemoteDataSource implements ISummaryDataSource {
  @factoryMethod
  factory SummaryRemoteDataSource(Dio dio, {@Named('summaryUrl') String baseUrl}) =
      _SummaryRemoteDataSource;

  /// Retrieves a summary report.
  @GET('/')
  Future<ResourceModel<SummaryModel>> getReport();
}
