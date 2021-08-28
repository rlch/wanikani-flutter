import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wanikani_flutter/wanikani/data/datasources/constants.dart';
import 'package:wanikani_flutter/wanikani/data/models/collection.dart';
import 'package:wanikani_flutter/wanikani/data/models/resource.dart';
import 'package:wanikani_flutter/wanikani/data/models/resources/spaced_repetition_system.dart';
import 'package:wanikani_flutter/core/utils/extensions/date_time_x.dart';

part 'spaced_repetition_systems.g.dart';

abstract class ISpacedRepetitionSystemsDataSource {
  /// Returns a collection of all spaced repetition systems, ordered by ascending id, 500 at a time.
  Future<CollectionModel<SpacedRepetitionSystemModel>> getAll({
    List<int>? ids,
    DateTime? updatedAfter,
  });

  /// Retrieves a specific reset by its id.
  Future<ResourceModel<SpacedRepetitionSystemModel>> getById(String id);
}

@RestApi(baseUrl: '$wanikaniApiBasePath/spaced_repetition_systems/')
abstract class SpacedRepetitionSystemsRemoteDataSource
    implements ISpacedRepetitionSystemsDataSource {
  factory SpacedRepetitionSystemsRemoteDataSource(Dio dio) =
      _SpacedRepetitionSystemsRemoteDataSource;

  /// Returns a collection of all spaced repetition systems, ordered by ascending id, 500 at a time.
  @GET('/')
  Future<CollectionModel<SpacedRepetitionSystemModel>> getAll({
    @Query('ids') List<int>? ids,
    @Query('updated_after') DateTime? updatedAfter,
  });

  /// Retrieves a specific reset by its id.
  @GET('/{id}')
  Future<ResourceModel<SpacedRepetitionSystemModel>> getById(
      @Path('id') String id);
}
