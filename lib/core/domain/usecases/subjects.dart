import 'package:injectable/injectable.dart';
import 'package:wanikani_flutter/core/data/models/collection.dart';
import 'package:wanikani_flutter/core/data/models/resources/subject.dart';
import 'package:wanikani_flutter/core/data/repositories/resources/subjects.dart';
import 'package:wanikani_flutter/core/domain/entities/enums/subject_type.dart';

@Injectable()
class SubjectsUseCases {
  const SubjectsUseCases(this.repository);

  final ISubjectsRepository repository;

  Future<CollectionModel<SubjectModel>> getAll({
    List<int>? ids,
    List<SubjectType>? types,
    List<String>? slugs,
    List<int>? levels,
    bool? hidden,
    DateTime? updatedAfter,
  }) async {
    print('getting');
    final x = await repository.getAll(
      ids: ids,
      types: types,
      slugs: slugs,
      levels: levels,
      hidden: hidden,
      updatedAfter: updatedAfter,
    );

    print(x);

    return x;
  }
}
