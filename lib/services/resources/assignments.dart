part of '../wanikani_services.dart';

@RestApi(baseUrl: 'https://api.wanikani.com/v2/assignments/')
abstract class _Assignments {
  factory _Assignments(Dio dio) = __Assignments;

  /// Returns a collection of all assignments, ordered by ascending `created_at`, 500 at a time.
  @GET('/')
  Future<Collection<Assignment>> getAll({
    @Query('available_after') DateTime? availableAfter,
    @Query('available_before') DateTime? availableBefore,
    @Query('burned') bool? burned,
    @Query('hidden') bool? hidden,
    @Query('ids') List<int>? ids,
    @Query('immediately_available_for_lessons')
        bool? immediatelyAvailableForLessons,
    @Query('immediately_available_for_review')
        bool? immediatelyAvailableForReview,
    @Query('in_review') bool? inReview,
    @Query('levels') List<int>? levels,
    @Query('srs_stages') List<int>? srsStages,
    @Query('started') bool? started,
    @Query('subject_ids') List<int>? subjectIds,
    @Query('subject_types') List<SubjectType>? subjectTypes,
    @Query('unlocked') bool? unlocked,
    @Query('updated_after') DateTime? updatedAfter,
  });

  /// Retrieves a specific assignment by its id.
  @GET('/{id}')
  Future<Resource<Assignment>> getById(@Path('id') String id);

  /// Mark the assignment as started, moving the assignment from the lessons queue to the review queue.
  /// Returns the updated assignment.
  @PUT('/{id}/start')
  Future<Resource<Assignment>> start(
    @Path('id') String id, {
    @Query('started_at') DateTime? startedAt,
  });
}
