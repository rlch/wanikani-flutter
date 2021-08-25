part of '../wanikani_services.dart';

@RestApi(baseUrl: '${WaniKaniServices.basePath}/resets/')
abstract class _Resets {
  factory _Resets(Dio dio) = __Resets;

  /// Returns a collection of all resets, ordered by ascending created_at, 500 at a time.
  @GET('/')
  Future<Collection<Reset>> getAll({
    @Query('ids') List<int>? ids,
    @Query('updated_after') DateTime? updatedAfter,
  });

  /// Retrieves a specific reset by its id.
  @GET('/{id}')
  Future<Resource<Reset>> getById(@Path('id') String id);
}
