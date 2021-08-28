import 'package:wanikani_flutter/wanikani/data/datasources/resources/voice_actors.dart';
import 'package:wanikani_flutter/wanikani/data/models/collection.dart';
import 'package:wanikani_flutter/wanikani/data/models/resource.dart';
import 'package:wanikani_flutter/wanikani/data/models/resources/voice_actor.dart';

abstract class IVoiceActorsRepository {
  /// Returns a collection of all voice actors, ordered by ascending `id`, 500 at a time.
  Future<CollectionModel<VoiceActorModel>> getAll({
    List<int>? ids,
    DateTime? updatedAfter,
  });

  /// Retrieves a specific voice actor by its `id`.
  Future<ResourceModel<VoiceActorModel>> getById(String id);
}

class VoiceActorsRepository implements IVoiceActorsRepository {
  const VoiceActorsRepository({required this.remote});
  final VoiceActorsRemoteDataSource remote;

  @override
  Future<CollectionModel<VoiceActorModel>> getAll({
    List<int>? ids,
    DateTime? updatedAfter,
  }) {
    return remote.getAll(ids: ids, updatedAfter: updatedAfter);
  }

  @override
  Future<ResourceModel<VoiceActorModel>> getById(String id) {
    return remote.getById(id);
  }
}
