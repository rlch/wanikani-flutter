import 'package:wanikani_flutter/wanikani/data/datasources/resources/spaced_repetition_systems.dart';
import 'package:wanikani_flutter/wanikani/data/models/collection.dart';
import 'package:wanikani_flutter/wanikani/data/models/resource.dart';
import 'package:wanikani_flutter/wanikani/data/models/resources/spaced_repetition_system.dart';

abstract class ISpacedRepetitionSystemsRepository {
  /// Returns a collection of all spaced repetition systems, ordered by ascending id, 500 at a time.
  Future<CollectionModel<SpacedRepetitionSystemModel>> getAll({
    List<int>? ids,
    DateTime? updatedAfter,
  });

  /// Retrieves a specific reset by its id.
  Future<ResourceModel<SpacedRepetitionSystemModel>> getById(String id);
}

class SpacedRepetitionSystemsRepository
    implements ISpacedRepetitionSystemsRepository {
  const SpacedRepetitionSystemsRepository({required this.remote});

  final SpacedRepetitionSystemsRemoteDataSource remote;

  @override
  Future<CollectionModel<SpacedRepetitionSystemModel>> getAll({
    List<int>? ids,
    DateTime? updatedAfter,
  }) {
    return remote.getAll(ids: ids, updatedAfter: updatedAfter);
  }

  @override
  Future<ResourceModel<SpacedRepetitionSystemModel>> getById(String id) {
    return remote.getById(id);
  }
}
