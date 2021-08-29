import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wanikani_flutter/core/data/datasources/constants.dart';
import 'package:wanikani_flutter/core/data/models/collection.dart';
import 'package:wanikani_flutter/core/data/models/resource.dart';
import 'package:wanikani_flutter/core/data/models/resources/subject.dart';
import 'package:wanikani_flutter/core/domain/entities/enums/subject_type.dart';
import 'package:wanikani_flutter/core/utils/extensions/date_time_x.dart';

part 'subjects.g.dart';

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

@RestApi(baseUrl: '$wanikaniApiBasePath/subjects/')
abstract class SubjectsRemoteDataSource implements ISubjectsDataSource {
  factory SubjectsRemoteDataSource(Dio dio) = _SubjectsRemoteDataSource;

  /// Returns a collection of all subjects, ordered by ascending id, 1000 at a time.
  @GET('/')
  Future<CollectionModel<SubjectModel>> getAll({
    @Query('ids') List<int>? ids,
    @Query('types') List<SubjectType>? types,
    @Query('slugs') List<String>? slugs,
    @Query('levels') List<int>? levels,
    @Query('hidden') bool? hidden,
    @Query('updated_after') DateTime? updatedAfter,
  });

  /// Retrieves a specific subject by its id.
  @GET('/{id}')
  Future<ResourceModel<SubjectModel>> getById(@Path('id') String id);
}
