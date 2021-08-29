import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wanikani_flutter/core/data/datasources/constants.dart';
import 'package:wanikani_flutter/core/data/models/collection.dart';
import 'package:wanikani_flutter/core/data/models/resource.dart';
import 'package:wanikani_flutter/core/data/models/resources/review_statistic.dart';
import 'package:wanikani_flutter/core/domain/entities/enums/subject_type.dart';
import 'package:wanikani_flutter/core/utils/extensions/date_time_x.dart';

part 'review_statistics.g.dart';

abstract class IReviewStatisticsDataSource {
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

@RestApi(baseUrl: '$wanikaniApiBasePath/resets/')
abstract class ReviewStatisticsRemoteDataSource
    implements IReviewStatisticsDataSource {
  factory ReviewStatisticsRemoteDataSource(Dio dio) =
      _ReviewStatisticsRemoteDataSource;

  /// Returns a collection of all review statistics, ordered by ascending created_at, 500 at a time.
  @GET('/')
  Future<CollectionModel<ReviewStatisticModel>> getAll({
    @Query('hidden') bool? hidden,
    @Query('ids') List<int>? ids,
    @Query('percentages_greater_than') int? percentagesGreaterThan,
    @Query('percentages_less_than') int? percentagesLessThan,
    @Query('subject_ids') List<int>? subjectIds,
    @Query('subject_types') List<SubjectType>? subjectTypes,
    @Query('updated_after') DateTime? updatedAfter,
  });

  /// Retrieves a specific review statistic by its id.
  @GET('/{id}')
  Future<ResourceModel<ReviewStatisticModel>> getById(@Path('id') String id);
}
