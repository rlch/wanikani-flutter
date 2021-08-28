import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wanikani_flutter/wanikani/data/datasources/constants.dart';
import 'package:wanikani_flutter/wanikani/data/models/collection.dart';
import 'package:wanikani_flutter/wanikani/data/models/resource.dart';
import 'package:wanikani_flutter/wanikani/data/models/resources/assignment.dart';
import 'package:wanikani_flutter/wanikani/data/models/resources/review.dart';
import 'package:wanikani_flutter/core/utils/extensions/date_time_x.dart';

part 'reviews.g.dart';

abstract class IReviewsDataSource {
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

@RestApi(baseUrl: '$wanikaniApiBasePath/reviews/')
abstract class ReviewsRemoteDataSource implements IReviewsDataSource {
  factory ReviewsRemoteDataSource(Dio dio) = _ReviewsRemoteDataSource;

  /// Returns a collection of all reviews, ordered by ascending created_at, 1000 at a time.
  @GET('/')
  Future<CollectionModel<ReviewModel>> getAll({
    @Query('assignment_ids') List<int>? assignmentIds,
    @Query('ids') List<int>? ids,
    @Query('subject_ids') List<int>? subjectIds,
    @Query('updated_after') DateTime? updatedAfter,
  });

  /// Retrieves a specific review by its id.
  @GET('/{id}')
  Future<ResourceModel<ReviewModel>> getById(@Path('id') String id);

  @POST('/reviews')
  Future<ResourceModel<AssignmentModel>> create(
      {@Body() required ReviewModel review});
}
