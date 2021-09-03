import 'package:injectable/injectable.dart';
import 'package:wanikani_flutter/core/data/models/resource.dart';
import 'package:wanikani_flutter/core/data/models/resources/summary.dart';
import 'package:wanikani_flutter/core/data/repositories/resources/summary.dart';

@Injectable()
class SummaryUseCases {
  const SummaryUseCases(this.repository);

  final ISummaryRepository repository;

  Future<ResourceModel<SummaryModel>> getReport() {
    return repository.getReport();
  }

  Future<int> getCurrentReviewsNumber() async {
    final report = await getReport();
    return report.map(
      (value) {
        final now = DateTime.now();
        return value.data.reviews
            .where((r) => r.availableAt.isBefore(now))
            .fold<int>(0, (n, e) => n += e.subjectIds.length);
      },
      loading: (_) => 0,
      error: (_) => 0,
    );
  }

  Future<int> getCurrentLessonsNumber() async {
    final report = await getReport();
    return report.map(
      (value) {
        final now = DateTime.now();
        return value.data.lessons
            .where((r) => r.availableAt.isBefore(now))
            .fold<int>(0, (n, e) => n += e.subjectIds.length);
      },
      loading: (_) => 0,
      error: (_) => 0,
    );
  }
}
