import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wanikani_flutter/wanikani/data/models/resource.dart';
import 'package:wanikani_flutter/wanikani/data/models/resources/user.dart';
import 'package:wanikani_flutter/wanikani/services/wanikani_services.dart';

part 'user.g.dart';

abstract class IUserDataSource {
  /// Returns a summary of user information.
  Future<ResourceModel<UserModel>> getInformation();

  /// Returns an updated summary of user information.
  Future<ResourceModel<UserModel>> update(UserModel user) =>
      _update(user.preferences.toJson());

  Future<ResourceModel<UserModel>> _update(
    Map<String, dynamic> userPreferences,
  );
}

@RestApi(baseUrl: '$wanikaniApiBasePath/user/')
abstract class UserRemoteDataSource implements IUserDataSource {
  factory UserRemoteDataSource(Dio dio) = _UserRemoteDataSource;

  /// Returns a summary of user information.
  @GET('/')
  Future<ResourceModel<UserModel>> getInformation();

  @PUT('/')
  Future<ResourceModel<UserModel>> _update(
    @Body() Map<String, dynamic> userPreferences,
  );

  /// Returns an updated summary of user information.
  Future<ResourceModel<UserModel>> update(UserModel user) =>
      _update(user.preferences.toJson());
}

