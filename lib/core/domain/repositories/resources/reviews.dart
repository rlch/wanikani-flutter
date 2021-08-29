import 'package:wanikani_flutter/core/data/datasources/resources/reviews.dart';
import 'package:wanikani_flutter/core/data/models/collection.dart';
import 'package:wanikani_flutter/core/data/models/resource.dart';
import 'package:wanikani_flutter/core/data/models/resources/assignment.dart';
import 'package:wanikani_flutter/core/data/models/resources/review.dart';

abstract class IReviewsRepository {
  /// Returns a collection of all reviews, ordered by ascending created_at, 1000 at a time.
  Future<CollectionModel<ReviewModel>> getAll({
    List<int>? assignmentIds,
    List<int>? ids,
    List<int>? subjectIds,
    DateTime? updatedAfter,
  });

  /// Retrieves a specific review by its id.
  Future<ResourceModel<ReviewModel>> getById(String id);

  // TODO: `resources_updated`
  Future<ResourceModel<AssignmentModel>> create({required ReviewModel review});
}

class ReviewsRepository implements IReviewsRepository {
  const ReviewsRepository({required this.remote});

  final ReviewsRemoteDataSource remote;

  @override
  Future<ResourceModel<AssignmentModel>> create({required ReviewModel review}) {
    return remote.create(review: review);
  }

  @override
  Future<CollectionModel<ReviewModel>> getAll({
    List<int>? ids,
    List<int>? assignmentIds,
    List<int>? subjectIds,
    DateTime? updatedAfter,
  }) {
    return remote.getAll(
      ids: ids,
      assignmentIds: assignmentIds,
      subjectIds: subjectIds,
      updatedAfter: updatedAfter,
    );
  }

  @override
  Future<ResourceModel<ReviewModel>> getById(String id) {
    return remote.getById(id);
  }
}
