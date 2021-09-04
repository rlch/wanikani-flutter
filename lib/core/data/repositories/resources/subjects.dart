import 'package:injectable/injectable.dart';
import 'package:wanikani_flutter/core/data/datasources/resources/subjects.dart';
import 'package:wanikani_flutter/core/data/models/collection.dart';
import 'package:wanikani_flutter/core/data/models/resource.dart';
import 'package:wanikani_flutter/core/data/models/resources/subject.dart';
import 'package:wanikani_flutter/core/domain/entities/enums/subject_type.dart';

abstract class ISubjectsRepository {
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

@Injectable(as: ISubjectsRepository)
class SubjectsRepository implements ISubjectsRepository {
  const SubjectsRepository({required this.remote});

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
      types: [...?types?.map((e) => e.toJson())],
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
