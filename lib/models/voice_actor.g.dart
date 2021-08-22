// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voice_actor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoiceActor _$VoiceActorFromJson(Map<String, dynamic> json) {
  return VoiceActor(
    description: json['description'] as String,
    gender: _$enumDecode(_$GenderEnumMap, json['gender']),
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$VoiceActorToJson(VoiceActor instance) =>
    <String, dynamic>{
      'description': instance.description,
      'gender': _$GenderEnumMap[instance.gender],
      'name': instance.name,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};
