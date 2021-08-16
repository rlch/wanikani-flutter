import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wanikani_flutter/enums/subject_type.dart';
import 'package:wanikani_flutter/interfaces/collection.dart';
import 'package:wanikani_flutter/interfaces/resource.dart';
import 'package:wanikani_flutter/models/assignment.dart';

part 'rest_client.g.dart';

part 'resources/assignment.dart';

@RestApi(baseUrl: 'https://api.wanikani.com/v2/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  /// Returns a collection of all assignments, ordered by ascending `created_at`, 500 at a time.
  @GET('/assignments')
  Future<Collection<Assignment>> getAllAssignments({
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
  @GET('/assignment/{id}')
  Future<Resource<Assignment>> getAssignment(@Path('id') String id);
}
