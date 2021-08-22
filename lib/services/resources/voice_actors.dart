part of '../wanikani_services.dart';

@RestApi(baseUrl: 'https://api.wanikani.com/v2/voice_actors/')
abstract class _VoiceActors {
  factory _VoiceActors(Dio dio) = __VoiceActors;

  /// Returns a collection of all voice actors, ordered by ascending `id`, 500 at a time.
  @GET('/')
  Future<Collection<VoiceActor>> getAll({
    @Query('ids') List<int>? ids,
    @Query('updated_after') DateTime? updatedAfter,
  });

  /// Retrieves a specific voice actor by its `id`.
  @GET('/{id}')
  Future<Resource<VoiceActor>> getById(@Path('id') String id);
}
