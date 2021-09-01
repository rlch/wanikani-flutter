import 'package:crypto/crypto.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:injectable/injectable.dart';

abstract class IGravatarLocalDataSource {
  /// Retrieves the path for the user's locally cached gravatar
  Future<String> getGravatarPath(String url);
}

@Injectable(as: IGravatarLocalDataSource)
class GravatarLocalDataSource implements IGravatarLocalDataSource {
  @override
  Future<String> getGravatarPath(String url) async {
    final cached = await DefaultCacheManager().getSingleFile(url);
    return cached.path;
  }
}

abstract class IGravatarRemoteDataSource {
  /// Retrieves the url of the gravatar for the given `email`.
  String getGravatarUrl(String email);
}

@Injectable(as: IGravatarRemoteDataSource)
class GravatarRemoteDataSource implements IGravatarRemoteDataSource {
  @override
  String getGravatarUrl(String email) {
    final reduced = email.toLowerCase().trim();
    final hash = md5.convert(reduced.codeUnits).toString();
    return 'https://www.gravatar.com/avatar/$hash';
  }
}
