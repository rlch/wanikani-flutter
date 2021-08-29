// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanji.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KanjiModel _$KanjiModelFromJson(Map<String, dynamic> json) {
  return KanjiModel(
    readings: (json['readings'] as List<dynamic>)
        .map((e) => KanjiReadingModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    auxiliaryMeanings: (json['auxiliary_meanings'] as List<dynamic>)
        .map((e) => AuxiliaryMeaningModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    meanings: (json['meanings'] as List<dynamic>)
        .map((e) => MeaningModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    amalgamationSubjectIds: (json['amalgamation_subject_ids'] as List<dynamic>)
        .map((e) => e as int)
        .toList(),
    componentSubjectIds: (json['component_subject_ids'] as List<dynamic>)
        .map((e) => e as int)
        .toList(),
    readingMnemonic: json['reading_mnemonic'] as String,
    visuallySimilarSubjectIds:
        (json['visually_similar_subject_ids'] as List<dynamic>)
            .map((e) => e as int)
            .toList(),
    createdAt: DateTime.parse(json['created_at'] as String),
    documentUrl: json['document_url'] as String,
    hiddenAt: json['hidden_at'] == null
        ? null
        : DateTime.parse(json['hidden_at'] as String),
    lessonPosition: json['lesson_position'] as int,
    level: json['level'] as int,
    meaningMnemonic: json['meaning_mnemonic'] as String,
    slug: json['slug'] as String,
    spacedRepetitionSystemId: json['spaced_repetition_system_id'] as int,
    meaningHint: json['meaning_hint'] as String?,
    readingHint: json['reading_hint'] as String?,
  )..lastCheckedCacheAt = json['last_checked_cache_at'] == null
      ? null
      : DateTime.parse(json['last_checked_cache_at'] as String);
}

Map<String, dynamic> _$KanjiModelToJson(KanjiModel instance) =>
    <String, dynamic>{
      'last_checked_cache_at': instance.lastCheckedCacheAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'document_url': instance.documentUrl,
      'hidden_at': instance.hiddenAt?.toIso8601String(),
      'lesson_position': instance.lessonPosition,
      'level': instance.level,
      'meaning_mnemonic': instance.meaningMnemonic,
      'slug': instance.slug,
      'spaced_repetition_system_id': instance.spacedRepetitionSystemId,
      'amalgamation_subject_ids': instance.amalgamationSubjectIds,
      'component_subject_ids': instance.componentSubjectIds,
      'meaning_hint': instance.meaningHint,
      'reading_hint': instance.readingHint,
      'reading_mnemonic': instance.readingMnemonic,
      'visually_similar_subject_ids': instance.visuallySimilarSubjectIds,
      'readings': instance.readings.map((e) => e.toJson()).toList(),
      'auxiliary_meanings':
          instance.auxiliaryMeanings.map((e) => e.toJson()).toList(),
      'meanings': instance.meanings.map((e) => e.toJson()).toList(),
    };
