import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wanikani_flutter/core/utils/converters/date_time.dart';
import 'package:wanikani_flutter/wanikani/data/models/collection.dart';
import 'package:wanikani_flutter/wanikani/data/models/resource.dart';
import 'package:wanikani_flutter/wanikani/data/models/resources/assignment.dart';
import 'package:wanikani_flutter/wanikani/domain/entities/enums/subject_type.dart';

part 'assignments.g.dart';

abstract class IAssignmentsDataSource {
  /// Returns a collection of all assignments, ordered by ascending `created_at`, 500 at a time.
  Future<CollectionModel<AssignmentModel>> getAll({
    DateTime? availableAfter,
    DateTime? availableBefore,
    bool? burned,
    bool? hidden,
    List<int>? ids,
    bool? immediatelyAvailableForLessons,
    bool? immediatelyAvailableForReview,
    bool? inReview,
    List<int>? levels,
    List<int>? srsStages,
    bool? started,
    List<int>? subjectIds,
    List<SubjectType>? subjectTypes,
    bool? unlocked,
    DateTime? updatedAfter,
  });

  /// Retrieves a specific assignment by its id.
  Future<ResourceModel<AssignmentModel>> getById(String id);

  /// Mark the assignment as started, moving the assignment from the lessons queue to the review queue.
  /// Returns the updated assignment.
  Future<ResourceModel<AssignmentModel>> start(String id, {DateTime? startedAt});
}

@RestApi(baseUrl: '${WaniKaniServices.basePath}/assignments')
@DateTimeConverter()
abstract class AssignmentsRemoteDataSource implements IAssignmentsDataSource {
  factory AssignmentsRemoteDataSource(Dio dio) = _AssignmentsRemoteDataSource;

  /// Returns a collection of all assignments, ordered by ascending `created_at`, 500 at a time.
  @GET('')
  Future<CollectionModel<AssignmentModel>> getAll({
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
  Future<ResourceModel<AssignmentModel>> getById(@Path('id') String id);

  /// Mark the assignment as started, moving the assignment from the lessons queue to the review queue.
  /// Returns the updated assignment.
  @PUT('/{id}/start')
  Future<ResourceModel<AssignmentModel>> start(
    @Path('id') String id, {
    @Query('started_at') DateTime? startedAt,
  });
}
