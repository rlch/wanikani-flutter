import 'package:wanikani_flutter/core/data/datasources/resources/resets.dart';
import 'package:wanikani_flutter/core/data/models/collection.dart';
import 'package:wanikani_flutter/core/data/models/resource.dart';
import 'package:wanikani_flutter/core/data/models/resources/reset.dart';

abstract class IResetsRepository {
  /// Returns a collection of all resets, ordered by ascending created_at, 500 at a time.
  Future<CollectionModel<ResetModel>> getAll({
    List<int>? ids,
    DateTime? updatedAfter,
  });

  /// Retrieves a specific reset by its id.
  Future<ResourceModel<ResetModel>> getById(String id);
}

class ResetsRepository implements IResetsRepository {
  const ResetsRepository({required this.remote});

  final ResetsRemoteDataSource remote;

  @override
  Future<CollectionModel<ResetModel>> getAll({
    List<int>? ids,
    DateTime? updatedAfter,
  }) {
    return remote.getAll(ids: ids, updatedAfter: updatedAfter);
  }

  @override
  Future<ResourceModel<ResetModel>> getById(String id) {
    return remote.getById(id);
  }
}
