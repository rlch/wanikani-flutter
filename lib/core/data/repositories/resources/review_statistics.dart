import 'package:wanikani_flutter/core/data/datasources/resources/review_statistics.dart';
import 'package:wanikani_flutter/core/data/models/collection.dart';
import 'package:wanikani_flutter/core/data/models/resource.dart';
import 'package:wanikani_flutter/core/data/models/resources/review_statistic.dart';
import 'package:wanikani_flutter/core/domain/entities/enums/subject_type.dart';

abstract class IReviewStatisticsRepository {
  /// Returns a collection of all review statistics, ordered by ascending created_at, 500 at a time.
  Future<CollectionModel<ReviewStatisticModel>> getAll({
    bool? hidden,
    List<int>? ids,
    int? percentagesGreaterThan,
    int? percentagesLessThan,
    List<int>? subjectIds,
    List<SubjectType>? subjectTypes,
    DateTime? updatedAfter,
  });

  /// Retrieves a specific review statistic by its id.
  Future<ResourceModel<ReviewStatisticModel>> getById(String id);
}

class ReviewStatisticsRepository implements IReviewStatisticsRepository {
  const ReviewStatisticsRepository({required this.remote});

  final ReviewStatisticsRemoteDataSource remote;

  @override
  Future<CollectionModel<ReviewStatisticModel>> getAll({
    bool? hidden,
    List<int>? ids,
    int? percentagesGreaterThan,
    int? percentagesLessThan,
    List<int>? subjectIds,
    List<SubjectType>? subjectTypes,
    DateTime? updatedAfter,
  }) {
    return remote.getAll(
      hidden: hidden,
      ids: ids,
      percentagesGreaterThan: percentagesGreaterThan,
      percentagesLessThan: percentagesLessThan,
      subjectIds: subjectIds,
      subjectTypes: subjectTypes,
      updatedAfter: updatedAfter,
    );
  }

  @override
  Future<ResourceModel<ReviewStatisticModel>> getById(String id) {
    return remote.getById(id);
  }
}
