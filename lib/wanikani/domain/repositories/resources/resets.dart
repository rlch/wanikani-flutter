import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wanikani_flutter/wanikani/data/datasources/constants.dart';
import 'package:wanikani_flutter/wanikani/data/models/collection.dart';
import 'package:wanikani_flutter/wanikani/data/models/resource.dart';
import 'package:wanikani_flutter/wanikani/data/models/resources/reset.dart';
import 'package:wanikani_flutter/core/utils/extensions/date_time_x.dart';

part 'resets.g.dart';

abstract class IResetsDataSource {
  /// Returns a collection of all resets, ordered by ascending created_at, 500 at a time.
  Future<CollectionModel<ResetModel>> getAll({
    List<int>? ids,
    DateTime? updatedAfter,
  });

  /// Retrieves a specific reset by its id.
  Future<ResourceModel<ResetModel>> getById(String id);
}

@RestApi(baseUrl: '$wanikaniApiBasePath/resets/')
abstract class ResetsRemoteDataSource implements IResetsDataSource {
  factory ResetsRemoteDataSource(Dio dio) = _ResetsRemoteDataSource;

  /// Returns a collection of all resets, ordered by ascending created_at, 500 at a time.
  @GET('/')
  Future<CollectionModel<ResetModel>> getAll({
    @Query('ids') List<int>? ids,
    @Query('updated_after') DateTime? updatedAfter,
  });

  /// Retrieves a specific reset by its id.
  @GET('/{id}')
  Future<ResourceModel<ResetModel>> getById(@Path('id') String id);
}
