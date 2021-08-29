// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voice_actor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoiceActorModel _$VoiceActorModelFromJson(Map<String, dynamic> json) {
  return VoiceActorModel(
    description: json['description'] as String,
    gender: Gender.fromJson(json['gender'] as String),
    name: json['name'] as String,
  )..lastCheckedCacheAt = json['last_checked_cache_at'] == null
      ? null
      : DateTime.parse(json['last_checked_cache_at'] as String);
}

Map<String, dynamic> _$VoiceActorModelToJson(VoiceActorModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'gender': instance.gender.toJson(),
      'last_checked_cache_at': instance.lastCheckedCacheAt?.toIso8601String(),
      'name': instance.name,
    };
