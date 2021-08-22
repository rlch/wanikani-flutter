part of '../wanikani_services.dart';

@RestApi(baseUrl: 'https://api.wanikani.com/v2/user/')
abstract class _User {
  factory _User(Dio dio) = __User;

  /// Returns a summary of user information.
  @GET('/')
  Future<Resource<User>> getInformation();

  @PUT('/')
  Future<Resource<User>> _update(
    @Body() Map<String, dynamic> userPreferences,
  );
}

extension UserServicesX on _User {
  /// Returns an updated summary of user information.
  Future<Resource<User>> update(User user) =>
      _update(user.preferences.toJson());
}
