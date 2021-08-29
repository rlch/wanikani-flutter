import 'package:crypto/crypto.dart';
import 'package:flutter/widgets.dart';
import 'package:sembast/sembast.dart';

abstract class IGravatarLocalDataSource {
  Future<String?> getGravatarUrl(String email);
  // TODO:
  Future<ImageProvider<AssetImage>?> getGravatar(String url);
}

class GravatarLocalDataSource implements IGravatarLocalDataSource {
  GravatarLocalDataSource({required this.db}) : store = StoreRef.main();

  final Database db;
  final StoreRef store;

  @override
  // TODO: flutter_cache_manager
  Future<ImageProvider<NetworkImage>?> getGravatar() async {
    final ref = store.record('avatar');
    if (await ref.exists(db)) {
      return NetworkImage(await ref.get(db));
    }
  }

  @override
  Future<String?> getGravatarUrl(String email) async {
    return (await store.record('avatar').get(db)) as String?;
  }
}

abstract class IGravatarRemoteDataSource {
  ImageProvider<NetworkImage> getGravatar(String email);
}

class GravatarRemoteDataSource implements IGravatarRemoteDataSource {
  @override
  ImageProvider<NetworkImage> getGravatar(String email) {
    final reduced = email.toLowerCase().trim();
    final hash = md5.convert(reduced.codeUnits).toString();
    return NetworkImage('https://www.gravatar.com/avatar/$hash');
  }
}
