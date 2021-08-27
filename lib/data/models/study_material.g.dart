// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_material.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudyMaterialModel _$StudyMaterialModelFromJson(Map<String, dynamic> json) {
  return StudyMaterialModel(
    createdAt: DateTime.parse(json['created_at'] as String),
    hidden: json['hidden'] as bool,
    meaningSynonyms: (json['meaning_synonyms'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    subjectId: json['subject_id'] as int,
    subjectType: _$enumDecode(_$SubjectTypeEnumMap, json['subject_type']),
    meaningNote: json['meaning_note'] as String?,
    readingNote: json['reading_note'] as String?,
  );
}

Map<String, dynamic> _$StudyMaterialModelToJson(StudyMaterialModel instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt.toIso8601String(),
      'hidden': instance.hidden,
      'meaning_note': instance.meaningNote,
      'meaning_synonyms': instance.meaningSynonyms,
      'reading_note': instance.readingNote,
      'subject_id': instance.subjectId,
      'subject_type': _$SubjectTypeEnumMap[instance.subjectType],
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

const _$SubjectTypeEnumMap = {
  SubjectType.kanji: 'kanji',
  SubjectType.radical: 'radical',
  SubjectType.vocabulary: 'vocabulary',
};
