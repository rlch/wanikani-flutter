part of '../wanikani_services.dart';

@RestApi(baseUrl: 'https://api.wanikani.com/v2/study_materials/')
abstract class _StudyMaterials {
  factory _StudyMaterials(Dio dio) = __StudyMaterials;

  /// Returns a collection of all spaced repetition systems, ordered by ascending `id`, 500 at a time.
  @GET('/')
  Future<Collection<StudyMaterial>> getAll({
    @Query('ids') List<int>? ids,
    @Query('updated_after') DateTime? updatedAfter,
  });

  /// Retrieves a specific reset by its `id`.
  @GET('/{id}')
  Future<Resource<StudyMaterial>> getById(@Path('id') String id);

  /// Creates a study material for a specific subject_id.
  /// The owner of the api key can only create one study_material per subject_id.
  @POST('/')
  Future<Resource<StudyMaterial>> create(
    @Body() StudyMaterial studyMaterial,
  );

  /// Updates a study material for a specific `id`
  @PUT('/{id}')
  Future<void> update(
    @Path('id') String id,
    @Body() StudyMaterial studyMaterial,
  );
}
