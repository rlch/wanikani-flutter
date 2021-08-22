part of '../wanikani_services.dart';

@RestApi(baseUrl: 'https://api.wanikani.com/v2/spaced_repetition_systems/')
abstract class _SpacedRepetitionSystems {
  factory _SpacedRepetitionSystems(Dio dio) = __SpacedRepetitionSystems;

  /// Returns a collection of all spaced repetition systems, ordered by ascending id, 500 at a time.
  @GET('/')
  Future<Collection<SpacedRepetitionSystem>> getAll({
    @Query('ids') List<int>? ids,
    @Query('updated_after') DateTime? updatedAfter,
  });

  /// Retrieves a specific reset by its id.
  @GET('/{id}')
  Future<Resource<SpacedRepetitionSystem>> getById(@Path('id') String id);
}
