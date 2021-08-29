import 'package:crypto/crypto.dart';

class GetGravatar {
  String? email, hash, url;

  String call(String email) {
    if (this.email == email) return url!;
    final reduced = (this.email = email).toLowerCase().trim();
    hash = md5.convert(reduced.codeUnits).toString();
    return url = 'https://www.gravatar.com/avatar/$hash';
  }
}
