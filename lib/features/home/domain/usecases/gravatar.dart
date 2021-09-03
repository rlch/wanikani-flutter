import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:wanikani_flutter/features/home/data/repositories/gravatar.dart';

@Injectable()
class GravatarUseCases {
  const GravatarUseCases(this.repository);

  final GravatarRepository repository;

  Future<ImageProvider> getImage(String email) async {
    return repository.getGravatar(email);
  }
}
