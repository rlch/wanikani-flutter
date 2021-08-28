import 'package:wanikani_flutter/wanikani/data/datasources/resources/user.dart';
import 'package:wanikani_flutter/wanikani/data/models/resource.dart';
import 'package:wanikani_flutter/wanikani/data/models/resources/user.dart';

abstract class IUserRepository {
  /// Returns a summary of user information.
  Future<ResourceModel<UserModel>> getInformation();

  /// Returns an updated summary of user information.
  Future<ResourceModel<UserModel>> update(UserModel user);
}

class UserRepository implements IUserRepository {
  const UserRepository({required this.remote});

  final UserRemoteDataSource remote;

  @override
  Future<ResourceModel<UserModel>> getInformation() {
    return remote.getInformation();
  }

  @override
  Future<ResourceModel<UserModel>> update(UserModel user) {
    return remote.update(user);
  }
}
