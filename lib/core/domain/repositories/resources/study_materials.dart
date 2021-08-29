import 'package:wanikani_flutter/core/data/datasources/resources/study_materials.dart';
import 'package:wanikani_flutter/core/data/models/collection.dart';
import 'package:wanikani_flutter/core/data/models/resource.dart';
import 'package:wanikani_flutter/core/data/models/resources/study_material.dart';

abstract class IStudyMaterialsRepository {
  /// Returns a collection of all spaced repetition systems, ordered by ascending `id`, 500 at a time.
  Future<CollectionModel<StudyMaterialModel>> getAll({
    List<int>? ids,
    DateTime? updatedAfter,
  });

  /// Retrieves a specific reset by its `id`.
  Future<ResourceModel<StudyMaterialModel>> getById(String id);

  /// Creates a study material for a specific subject_id.
  /// The owner of the api key can only create one study_material per subject_id.
  Future<ResourceModel<StudyMaterialModel>> create(
      StudyMaterialModel studyMaterial);

  /// Updates a study material for a specific `id`
  Future<void> update(String id, StudyMaterialModel studyMaterial);
}

class StudyMaterialsRepository implements IStudyMaterialsRepository {
  const StudyMaterialsRepository({required this.remote});

  final StudyMaterialsRemoteDataSource remote;

  @override
  Future<ResourceModel<StudyMaterialModel>> create(
    StudyMaterialModel studyMaterial,
  ) {
    return remote.create(studyMaterial);
  }

  @override
  Future<CollectionModel<StudyMaterialModel>> getAll({
    List<int>? ids,
    DateTime? updatedAfter,
  }) {
    return remote.getAll(ids: ids, updatedAfter: updatedAfter);
  }

  @override
  Future<ResourceModel<StudyMaterialModel>> getById(String id) {
    return remote.getById(id);
  }

  @override
  Future<void> update(String id, StudyMaterialModel studyMaterial) {
    return remote.update(id, studyMaterial);
  }
}
