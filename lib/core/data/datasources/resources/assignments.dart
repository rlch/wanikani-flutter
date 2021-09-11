import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wanikani_flutter/core/utils/extensions/date_time_x.dart';
import 'package:wanikani_flutter/core/data/models/collection.dart';
import 'package:wanikani_flutter/core/data/models/resource.dart';
import 'package:wanikani_flutter/core/data/models/resources/assignment.dart';
import 'package:wanikani_flutter/core/domain/entities/enums/subject_type.dart';

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
    List<String>? subjectTypes,
    bool? unlocked,
    DateTime? updatedAfter,
  });

  /// Retrieves a specific assignment by its id.
  Future<ResourceModel<AssignmentModel>> getById(String id);

  /// Mark the assignment as started, moving the assignment from the lessons queue to the review queue.
  /// Returns the updated assignment.
  Future<ResourceModel<AssignmentModel>> start(
    String id, {
    DateTime? startedAt,
  });
}

@lazySingleton
@RestApi()
abstract class AssignmentsRemoteDataSource implements IAssignmentsDataSource {
  @factoryMethod
  factory AssignmentsRemoteDataSource(Dio dio, {@Named('assignmentsUrl') String baseUrl}) =
      _AssignmentsRemoteDataSource;

  /// Returns a collection of all assignments, ordered by ascending `created_at`, 500 at a time.
  @GET('')
  Future<CollectionModel<AssignmentModel>> getAll({
    @Query('available_after') DateTime? availableAfter,
    @Query('available_before') DateTime? availableBefore,
    @Query('burned') bool? burned,
    @Query('hidden') bool? hidden,
    @Query('ids') List<int>? ids,
    @Query('immediately_available_for_lessons') bool? immediatelyAvailableForLessons,
    @Query('immediately_available_for_review') bool? immediatelyAvailableForReview,
    @Query('in_review') bool? inReview,
    @Query('levels') List<int>? levels,
    @Query('srs_stages') List<int>? srsStages,
    @Query('started') bool? started,
    @Query('subject_ids') List<int>? subjectIds,
    @Query('subject_types') List<String>? subjectTypes,
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

/// class AssignmentsLocalDataSource implements IAssignmentsDataSource {
///   AssignmentsLocalDataSource({required this.db})
///       : store = StoreRef<int, Assignment>.main();

///   final Database db;
///   final StoreRef<int, Assignment> store;

///   @override
///   Future<CollectionModel<AssignmentModel>> getAll({
///     DateTime? availableAfter,
///     DateTime? availableBefore,
///     bool? burned,
///     bool? hidden,
///     List<int>? ids,
///     bool? immediatelyAvailableForLessons,
///     bool? immediatelyAvailableForReview,
///     bool? inReview,
///     List<int>? levels,
///     List<int>? srsStages,
///     bool? started,
///     List<int>? subjectIds,
///     List<SubjectType>? subjectTypes,
///     bool? unlocked,
///     DateTime? updatedAfter,
///   }) {
///     final assignments = store.find(
///       db,
///       finder: Finder(
///         filter: Filter.and([
///           if (availableAfter != null)
///             Filter.custom(DateTimeFilter.gt(
///               'availableAt',
///               availableAfter,
///             )),
///           if (availableBefore != null)
///             Filter.custom(DateTimeFilter.lt(
///               'availableBefore',
///               availableBefore,
///             )),
///           if (burned != null) Filter.notEquals('burnedAt', null),
///           if (hidden != null) Filter.equals('hidden', hidden),
///           if (ids != null) Filter.inList('ids', ids),
///           if (srsStages != null) Filter.inList('srsStage', srsStages),
///           if (started != null) Filter.notEquals('startedAt', null),
///           if (subjectIds != null) Filter.inList('subjectId', subjectIds),
///           if (subjectTypes != null) Filter.inList('subjectType', subjectTypes),
///         ]),
///       ),
///     );
///     throw UnimplementedError();
///   }

///   /// Timestamp when the related subject will be available in the user's review queue.
///   final DateTime? availableAt;

///   /// Timestamp when the user reaches SRS stage 9 the first time.
///   final DateTime? burnedAt;

///   /// Timestamp when the assignment was created.
///   final DateTime? createdAt;

///   /// Indicates if the associated subject has been hidden, preventing it from appearing in lessons or reviews.
///   final bool hidden;

///   /// Timestamp when the user reaches SRS stage 5 for the first time.
///   final DateTime? passedAt;

///   /// Timestamp when the subject is resurrected and placed back in the user's review queue.
///   final DateTime? resurrectedAt;

///   /// The current SRS stage interval. The interval range is determined by the related
///   /// subject's spaced repetition system.
///   final int srsStage;

///   /// Timestamp when the user completes the lesson for the related subject.
///   final DateTime? startedAt;

///   /// Unique identifier of the associated subject.
///   final int subjectId;

///   /// The type of the associated subject, one of: kanji, radical, or vocabulary.
///   final SubjectType subjectType;

///   /// The timestamp when the related subject has its prerequisites satisfied and is made available in lessons.
///   /// Prerequisites are:
///   ///     The subject components have reached SRS stage 5 once (they have been “passed”).
///   ///     The user's level is equal to or greater than the level of the assignment’s subject.
///   final DateTime? unlockedAt;

///   @override
///   Future<ResourceModel<AssignmentModel>> getById(String id) {
///     throw UnimplementedError();
///   }

///   @override
///   Future<ResourceModel<AssignmentModel>> start(
///     String id, {
///     DateTime? startedAt,
///   }) {
///     throw UnimplementedError();
///   }
/// }
