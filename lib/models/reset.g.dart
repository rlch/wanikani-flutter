// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reset _$ResetFromJson(Map<String, dynamic> json) {
  return Reset(
    confirmedAt: json['confirmed_at'] == null
        ? null
        : DateTime.parse(json['confirmed_at'] as String),
    createdAt: DateTime.parse(json['created_at'] as String),
    originalLevel: json['original_level'] as int,
    targetLevel: json['target_level'] as int,
  );
}

Map<String, dynamic> _$ResetToJson(Reset instance) => <String, dynamic>{
      'confirmed_at': instance.confirmedAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'original_level': instance.originalLevel,
      'target_level': instance.targetLevel,
    };
