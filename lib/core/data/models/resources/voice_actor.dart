import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/core/data/models/model.dart';
import 'package:wanikani_flutter/core/domain/entities/enums/gender.dart';
import 'package:wanikani_flutter/core/domain/entities/resources/voice_actor.dart';

part 'voice_actor.g.dart';

@JsonSerializable()
class VoiceActorModel extends VoiceActor with IModel {
  VoiceActorModel({
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
