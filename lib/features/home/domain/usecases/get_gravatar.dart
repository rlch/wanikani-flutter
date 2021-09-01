import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:wanikani_flutter/features/home/data/repositories/gravatar.dart';

@Injectable()
class GetGravatar {
  const GetGravatar(this.repository);

  final GravatarRepository repository;

  Future<ImageProvider> call(String email) async {
    return repository.getGravatar(email);
  }
}
