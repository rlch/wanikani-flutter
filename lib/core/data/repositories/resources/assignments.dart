import 'package:wanikani_flutter/core/data/datasources/resources/assignments.dart';
import 'package:wanikani_flutter/core/data/models/collection.dart';
import 'package:wanikani_flutter/core/data/models/resource.dart';
import 'package:wanikani_flutter/core/data/models/resources/assignment.dart';
import 'package:wanikani_flutter/core/domain/entities/enums/subject_type.dart';

abstract class IAssignmentsRepository {
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
  Future<ResourceModel<AssignmentModel>> start(
    String id, {
    DateTime? startedAt,
  });
}

class AssignmentsRepository implements IAssignmentsRepository {
  const AssignmentsRepository({required this.remote});

  final AssignmentsRemoteDataSource remote;

  @override
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
  }) {
    return remote.getAll(
      availableAfter: availableAfter,
      availableBefore: availableBefore,
      burned: burned,
      hidden: hidden,
      ids: ids,
      immediatelyAvailableForLessons: immediatelyAvailableForLessons,
      immediatelyAvailableForReview: immediatelyAvailableForReview,
      inReview: inReview,
      levels: levels,
      srsStages: srsStages,
      started: started,
      subjectIds: subjectIds,
      subjectTypes: subjectTypes,
      unlocked: unlocked,
      updatedAfter: updatedAfter,
    );
  }

  @override
  Future<ResourceModel<AssignmentModel>> getById(String id) {
    return remote.getById(id);
  }

  @override
  Future<ResourceModel<AssignmentModel>> start(
    String id, {
    DateTime? startedAt,
  }) {
    return remote.start(id, startedAt: startedAt);
  }
}
