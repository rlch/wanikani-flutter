part of '../wanikani_services.dart';

@RestApi(baseUrl: 'https://api.wanikani.com/v2/level_progressions/')
abstract class _LevelProgressions {
  factory _LevelProgressions(Dio dio) = __LevelProgressions;

  /// Returns a collection of all level progressions, ordered by ascending created_at, 500 at a time.
  @GET('/')
  Future<Collection<LevelProgression>> getAll({
    @Query('ids') List<int>? ids,
    @Query('updated_after') DateTime? updatedAfter,
  });

  /// Retrieves a specific level-progression by its id.
  @GET('/{id}')
  Future<Resource<LevelProgression>> getById(@Path('id') String id);
}
