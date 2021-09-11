import 'package:injectable/injectable.dart';
import 'package:wanikani_flutter/core/data/models/collection.dart';
import 'package:wanikani_flutter/core/data/models/resource.dart';
import 'package:wanikani_flutter/core/data/models/resources/assignment.dart';
import 'package:wanikani_flutter/core/data/repositories/resources/assignments.dart';
import 'package:wanikani_flutter/core/domain/entities/enums/subject_type.dart';

@Injectable()
class AssignmentsUseCases {
  const AssignmentsUseCases(this.repository);

  final IAssignmentsRepository repository;

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
    return repository.getAll(
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

  Future<ResourceModel<AssignmentModel>> getById(String id) {
    return repository.getById(id);
  }

  Future<ResourceModel<AssignmentModel>> start(String id, {DateTime? startedAt}) {
    return repository.start(id, startedAt: startedAt);
  }
}
