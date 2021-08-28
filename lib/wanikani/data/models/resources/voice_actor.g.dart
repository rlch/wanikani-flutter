// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voice_actor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoiceActorModel _$VoiceActorModelFromJson(Map<String, dynamic> json) {
  return VoiceActorModel(
    description: json['description'] as String,
    gender: json['gender'],
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$VoiceActorModelToJson(VoiceActorModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'gender': instance.gender,
      'name': instance.name,
    };
