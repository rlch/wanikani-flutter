import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wanikani_flutter/wanikani/data/models/collection.dart';
import 'package:wanikani_flutter/wanikani/data/models/resource.dart';
import 'package:wanikani_flutter/wanikani/data/models/resources/level_progression.dart';
import 'package:wanikani_flutter/wanikani/services/wanikani_services.dart';

part 'level_progressions.g.dart';

abstract class ILevelProgressionsDataSource {
  /// Returns a collection of all level progressions, ordered by ascending created_at, 500 at a time.
  Future<CollectionModel<LevelProgressionModel>> getAll({
    List<int>? ids,
    DateTime? updatedAfter,
  });

  /// Retrieves a specific level-progression by its id.
  Future<ResourceModel<LevelProgressionModel>> getById(String id);
}

@RestApi(baseUrl: '${WaniKaniServices.basePath}/level_progressions/')
abstract class LevelProgressionsRemoteDataSource implements ILevelProgressionsDataSource {
  factory LevelProgressionsRemoteDataSource(Dio dio) =
      _LevelProgressionsRemoteDataSource;

  /// Returns a collection of all level progressions, ordered by ascending created_at, 500 at a time.
  @GET('/')
  Future<CollectionModel<LevelProgressionModel>> getAll({
    @Query('ids') List<int>? ids,
    @Query('updated_after') DateTime? updatedAfter,
  });

  /// Retrieves a specific level-progression by its id.
  @GET('/{id}')
  Future<ResourceModel<LevelProgressionModel>> getById(@Path('id') String id);
}
