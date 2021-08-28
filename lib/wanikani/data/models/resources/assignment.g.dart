// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssignmentModel _$AssignmentModelFromJson(Map<String, dynamic> json) {
  return AssignmentModel(
    availableAt: json['available_at'] == null
        ? null
        : DateTime.parse(json['available_at'] as String),
    burnedAt: json['burned_at'] == null
        ? null
        : DateTime.parse(json['burned_at'] as String),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    hidden: json['hidden'] as bool,
    passedAt: json['passed_at'] == null
        ? null
        : DateTime.parse(json['passed_at'] as String),
    resurrectedAt: json['resurrected_at'] == null
        ? null
        : DateTime.parse(json['resurrected_at'] as String),
    srsStage: json['srs_stage'] as int,
    startedAt: json['started_at'] == null
        ? null
        : DateTime.parse(json['started_at'] as String),
    subjectId: json['subject_id'] as int,
    subjectType: _$enumDecode(_$SubjectTypeEnumMap, json['subject_type']),
    unlockedAt: json['unlocked_at'] == null
        ? null
        : DateTime.parse(json['unlocked_at'] as String),
  )..lastCheckedCacheAt = json['last_checked_cache_at'] == null
      ? null
      : DateTime.parse(json['last_checked_cache_at'] as String);
}

Map<String, dynamic> _$AssignmentModelToJson(AssignmentModel instance) =>
    <String, dynamic>{
      'last_checked_cache_at': instance.lastCheckedCacheAt?.toIso8601String(),
      'available_at': instance.availableAt?.toIso8601String(),
      'burned_at': instance.burnedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'hidden': instance.hidden,
      'passed_at': instance.passedAt?.toIso8601String(),
      'resurrected_at': instance.resurrectedAt?.toIso8601String(),
      'srs_stage': instance.srsStage,
      'started_at': instance.startedAt?.toIso8601String(),
      'subject_id': instance.subjectId,
      'subject_type': _$SubjectTypeEnumMap[instance.subjectType],
      'unlocked_at': instance.unlockedAt?.toIso8601String(),
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
