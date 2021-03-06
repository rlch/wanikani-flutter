// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeaningModel _$MeaningModelFromJson(Map<String, dynamic> json) {
  return MeaningModel(
    meaning: json['meaning'] as String,
    primary: json['primary'] as bool,
    acceptedAnswer: json['accepted_answer'] as bool,
  );
}

Map<String, dynamic> _$MeaningModelToJson(MeaningModel instance) =>
    <String, dynamic>{
      'meaning': instance.meaning,
      'primary': instance.primary,
      'accepted_answer': instance.acceptedAnswer,
    };

AuxiliaryMeaningModel _$AuxiliaryMeaningModelFromJson(
    Map<String, dynamic> json) {
  return AuxiliaryMeaningModel(
    meaning: json['meaning'] as String,
    type: _$enumDecode(_$AuxiliaryMeaningTypeEnumMap, json['type']),
  );
}

Map<String, dynamic> _$AuxiliaryMeaningModelToJson(
        AuxiliaryMeaningModel instance) =>
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
