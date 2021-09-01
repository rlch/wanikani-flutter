import 'package:wanikani_flutter/core/data/datasources/resources/level_progressions.dart';
import 'package:wanikani_flutter/core/data/models/collection.dart';
import 'package:wanikani_flutter/core/data/models/resource.dart';
import 'package:wanikani_flutter/core/data/models/resources/level_progression.dart';

abstract class ILevelProgressionsRepository {
  /// Returns a collection of all level progressions, ordered by ascending created_at, 500 at a time.
  Future<CollectionModel<LevelProgressionModel>> getAll({
    List<int>? ids,
    DateTime? updatedAfter,
  });

  /// Retrieves a specific level-progression by its id.
  Future<ResourceModel<LevelProgressionModel>> getById(String id);
}

class LevelProgressionsRepository implements ILevelProgressionsRepository {
  const LevelProgressionsRepository({required this.remote});

  final LevelProgressionsRemoteDataSource remote;

  @override
  Future<CollectionModel<LevelProgressionModel>> getAll({
    List<int>? ids,
    DateTime? updatedAfter,
  }) {
    return remote.getAll(ids: ids, updatedAfter: updatedAfter);
  }

  @override
  Future<ResourceModel<LevelProgressionModel>> getById(String id) {
    return remote.getById(id);
  }
}
