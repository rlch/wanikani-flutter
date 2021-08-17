part of '../wanikani_services.dart';

@RestApi(baseUrl: 'https://api.wanikani.com/v2/reviews/')
abstract class _Reviews {
  factory _Reviews(Dio dio) = __Reviews;

  /// Returns a collection of all reviews, ordered by ascending created_at, 1000 at a time.
  @GET('/')
  Future<Collection<Review>> getAll({
    @Query('assignment_ids') List<int>? assignmentIds,
    @Query('ids') List<int>? ids,
    @Query('subject_ids') List<int>? subjectIds,
    @Query('updated_after') DateTime? updatedAfter,
  });

  /// Retrieves a specific review by its id.
  @GET('/{id}')
  Future<Resource<Review>> getById(@Path('id') String id);

  // TODO: `resources_updated`
  @POST('/reviews')
  Future<Resource<Assignment>> create({@Body() Review review});
}
