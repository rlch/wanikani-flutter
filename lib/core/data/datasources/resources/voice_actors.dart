import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wanikani_flutter/core/data/datasources/constants.dart';
import 'package:wanikani_flutter/core/data/models/collection.dart';
import 'package:wanikani_flutter/core/data/models/resource.dart';
import 'package:wanikani_flutter/core/data/models/resources/voice_actor.dart';
import 'package:wanikani_flutter/core/utils/extensions/date_time_x.dart';

part 'voice_actors.g.dart';

abstract class IVoiceActorsDataSource {
  /// Returns a collection of all voice actors, ordered by ascending `id`, 500 at a time.
  Future<CollectionModel<VoiceActorModel>> getAll({
    List<int>? ids,
    DateTime? updatedAfter,
  });

  /// Retrieves a specific voice actor by its `id`.
  Future<ResourceModel<VoiceActorModel>> getById(String id);
}

@RestApi(baseUrl: '$wanikaniApiBasePath/voice_actors/')
abstract class VoiceActorsRemoteDataSource implements IVoiceActorsDataSource {
  factory VoiceActorsRemoteDataSource(Dio dio) = _VoiceActorsRemoteDataSource;

  /// Returns a collection of all voice actors, ordered by ascending `id`, 500 at a time.
  @GET('/')
  Future<CollectionModel<VoiceActorModel>> getAll({
    @Query('ids') List<int>? ids,
    @Query('updated_after') DateTime? updatedAfter,
  });

  /// Retrieves a specific voice actor by its `id`.
  @GET('/{id}')
  Future<ResourceModel<VoiceActorModel>> getById(@Path('id') String id);
}
