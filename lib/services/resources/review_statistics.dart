part of '../wanikani_services.dart';

@RestApi(baseUrl: '${WaniKaniServices.basePath}/resets/')
abstract class _ReviewStatistics {
  factory _ReviewStatistics(Dio dio) = __ReviewStatistics;

  /// Returns a collection of all review statistics, ordered by ascending created_at, 500 at a time.
  @GET('/')
  Future<Collection<ReviewStatistic>> getAll({
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
  Future<Resource<ReviewStatistic>> getById(@Path('id') String id);
}
