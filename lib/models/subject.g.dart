// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meaning _$MeaningFromJson(Map<String, dynamic> json) {
  return Meaning(
    meaning: json['meaning'] as String,
    primary: json['primary'] as bool,
    acceptedAnswer: json['accepted_answer'] as bool,
  );
}

Map<String, dynamic> _$MeaningToJson(Meaning instance) => <String, dynamic>{
      'meaning': instance.meaning,
      'primary': instance.primary,
      'accepted_answer': instance.acceptedAnswer,
    };

AuxiliaryMeaning _$AuxiliaryMeaningFromJson(Map<String, dynamic> json) {
  return AuxiliaryMeaning(
    meaning: json['meaning'] as String,
    type: _$enumDecode(_$AuxiliaryMeaningTypeEnumMap, json['type']),
  );
}

Map<String, dynamic> _$AuxiliaryMeaningToJson(AuxiliaryMeaning instance) =>
    <String, dynamic>{
      'meaning': instance.meaning,
      'type': _$AuxiliaryMeaningTypeEnumMap[instance.type],
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

const _$AuxiliaryMeaningTypeEnumMap = {
  AuxiliaryMeaningType.whitelist: 'whitelist',
  AuxiliaryMeaningType.blacklist: 'blacklist',
};