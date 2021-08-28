import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/wanikani/domain/entities/resources/voice_actor.dart';
import 'package:wanikani_flutter/wanikani/enums/gender.dart';

part 'voice_actor.g.dart';

@JsonSerializable()
class VoiceActorModel extends VoiceActor {
  const VoiceActorModel({
    required String description,
    required Gender gender,
    required String name,
  }) : super(
          description: description,
          gender: gender,
          name: name,
        );

  factory VoiceActorModel.fromJson(Map<String, dynamic> json) =>
      _$VoiceActorModelFromJson(json);
  Map<String, dynamic> toJson() => _$VoiceActorModelToJson(this);
}
