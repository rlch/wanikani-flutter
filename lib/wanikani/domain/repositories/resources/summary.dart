import 'package:wanikani_flutter/wanikani/data/datasources/resources/summary.dart';
import 'package:wanikani_flutter/wanikani/data/models/resource.dart';
import 'package:wanikani_flutter/wanikani/data/models/resources/summary.dart';


abstract class ISummaryDataSource {
  /// Retrieves a summary report.
  Future<ResourceModel<SummaryModel>> getReport();
}

class SummaryDataSource implements ISummaryDataSource {
  const SummaryDataSource({required this.remote});
  final SummaryRemoteDataSource remote;

  @override
  Future<ResourceModel<SummaryModel>> getReport() {
    return remote.getReport();
  }
}
