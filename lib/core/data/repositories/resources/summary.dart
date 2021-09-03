import 'package:injectable/injectable.dart';
import 'package:wanikani_flutter/core/data/datasources/resources/summary.dart';
import 'package:wanikani_flutter/core/data/models/resource.dart';
import 'package:wanikani_flutter/core/data/models/resources/summary.dart';

abstract class ISummaryRepository {
  /// Retrieves a summary report.
  Future<ResourceModel<SummaryModel>> getReport();
}

@Injectable(as: ISummaryRepository)
class SummaryRepository implements ISummaryRepository {
  const SummaryRepository({required this.remote});
  final SummaryRemoteDataSource remote;

  @override
  Future<ResourceModel<SummaryModel>> getReport() {
    return remote.getReport();
  }
}
