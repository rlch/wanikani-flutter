import 'package:wanikani_flutter/wanikani/data/datasources/resources/subjects.dart';
import 'package:wanikani_flutter/wanikani/data/models/collection.dart';
import 'package:wanikani_flutter/wanikani/data/models/resource.dart';
import 'package:wanikani_flutter/wanikani/data/models/resources/subject.dart';
import 'package:wanikani_flutter/wanikani/domain/entities/enums/subject_type.dart';

abstract class ISubjectsDataSource {
  /// Returns a collection of all subjects, ordered by ascending id, 1000 at a time.
  Future<CollectionModel<SubjectModel>> getAll({
    List<int>? ids,
    List<SubjectType>? types,
    List<String>? slugs,
    List<int>? levels,
    bool? hidden,
    DateTime? updatedAfter,
  });

  /// Retrieves a specific subject by its id.
  Future<ResourceModel<SubjectModel>> getById(String id);
}

class SubjectsDataSource implements ISubjectsDataSource {
  const SubjectsDataSource({required this.remote});

  final SubjectsRemoteDataSource remote;

  @override
  Future<CollectionModel<SubjectModel>> getAll({
    List<int>? ids,
    List<SubjectType>? types,
    List<String>? slugs,
    List<int>? levels,
    bool? hidden,
    DateTime? updatedAfter,
  }) {
    return remote.getAll(
      ids: ids,
      types: types,
      slugs: slugs,
      levels: levels,
      hidden: hidden,
      updatedAfter: updatedAfter,
    );
  }

  @override
  Future<ResourceModel<SubjectModel>> getById(String id) {
    return remote.getById(id);
  }
}
