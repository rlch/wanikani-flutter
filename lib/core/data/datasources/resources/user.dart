import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wanikani_flutter/core/data/models/resource.dart';
import 'package:wanikani_flutter/core/data/models/resources/user.dart';

import '../constants.dart';

part 'user.g.dart';

abstract class IUserDataSource {
  /// Returns a summary of user information.
  Future<ResourceModel<UserModel>> getInformation();

  Future<ResourceModel<UserModel>> update(UserModel user);
}

@RestApi(baseUrl: '$wanikaniApiBasePath/user/')
abstract class UserRemoteDataSource implements IUserDataSource {
  factory UserRemoteDataSource(Dio dio) = _UserRemoteDataSource;

  /// Returns a summary of user information.
  @GET('/')
  Future<ResourceModel<UserModel>> getInformation();

  /// Returns an updated summary of user information.
  @PUT('/')
  Future<ResourceModel<UserModel>> update(
    @Body() UserModel userPreferences,
  );
}
