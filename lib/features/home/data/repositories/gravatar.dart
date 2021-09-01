import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:wanikani_flutter/features/home/data/datasources/gravatar.dart';

abstract class IGravatarRepository {
  Future<ImageProvider> getGravatar(String email);
}

@Injectable()
class GravatarRepository implements IGravatarRepository {
  const GravatarRepository(this.local, this.remote);

  final IGravatarLocalDataSource local;
  final IGravatarRemoteDataSource remote;

  @override
  Future<ImageProvider> getGravatar(String email) async {
    final url = remote.getGravatarUrl(email);
    final cachedPath = await local.getGravatarPath(url);
    return AssetImage(cachedPath);
  }
}
