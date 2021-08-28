import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wanikani_flutter/wanikani/data/datasources/constants.dart';
import 'package:wanikani_flutter/wanikani/data/models/collection.dart';
import 'package:wanikani_flutter/wanikani/data/models/resource.dart';
import 'package:wanikani_flutter/wanikani/data/models/resources/study_material.dart';
import 'package:wanikani_flutter/core/utils/extensions/date_time_x.dart';

part 'study_materials.g.dart';

abstract class IStudyMaterialsDataSource {
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

@RestApi(baseUrl: '$wanikaniApiBasePath/study_materials/')
abstract class StudyMaterialsRemoteDataSource
    implements IStudyMaterialsDataSource {
  factory StudyMaterialsRemoteDataSource(Dio dio) =
      _StudyMaterialsRemoteDataSource;

  /// Returns a collection of all spaced repetition systems, ordered by ascending `id`, 500 at a time.
  @GET('/')
  Future<CollectionModel<StudyMaterialModel>> getAll({
    @Query('ids') List<int>? ids,
    @Query('updated_after') DateTime? updatedAfter,
  });

  /// Retrieves a specific reset by its `id`.
  @GET('/{id}')
  Future<ResourceModel<StudyMaterialModel>> getById(@Path('id') String id);

  /// Creates a study material for a specific subject_id.
  /// The owner of the api key can only create one study_material per subject_id.
  @POST('/')
  Future<ResourceModel<StudyMaterialModel>> create(
    @Body() StudyMaterialModel studyMaterial,
  );

  /// Updates a study material for a specific `id`
  @PUT('/{id}')
  Future<void> update(
    @Path('id') String id,
    @Body() StudyMaterialModel studyMaterial,
  );
}
