// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reading.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KanjiReading _$KanjiReadingFromJson(Map<String, dynamic> json) {
  return KanjiReading(
    reading: json['reading'] as String,
    primary: json['primary'] as bool,
    acceptedAnswer: json['accepted_answer'] as bool,
    type: _$enumDecode(_$KanjiReadingTypeEnumMap, json['type']),
  );
}

Map<String, dynamic> _$KanjiReadingToJson(KanjiReading instance) =>
    <String, dynamic>{
      'reading': instance.reading,
      'primary': instance.primary,
      'accepted_answer': instance.acceptedAnswer,
      'type': _$KanjiReadingTypeEnumMap[instance.type],
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

const _$KanjiReadingTypeEnumMap = {
  KanjiReadingType.kunyomi: 'kunyomi',
  KanjiReadingType.nanori: 'nanori',
  KanjiReadingType.onyomi: 'onyomi',
};

VocabularyReading _$VocabularyReadingFromJson(Map<String, dynamic> json) {
  return VocabularyReading(
    reading: json['reading'] as String,
    primary: json['primary'] as bool,
    acceptedAnswer: json['accepted_answer'] as bool,
  );
}

Map<String, dynamic> _$VocabularyReadingToJson(VocabularyReading instance) =>
    <String, dynamic>{
      'reading': instance.reading,
      'primary': instance.primary,
      'accepted_answer': instance.acceptedAnswer,
    };
