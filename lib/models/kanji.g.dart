// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanji.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Kanji _$KanjiFromJson(Map<String, dynamic> json) {
  return Kanji(
    amalgamationSubjectIds: (json['amalgamation_subject_ids'] as List<dynamic>)
        .map((e) => e as int)
        .toList(),
    componentSubjectIds: (json['component_subject_ids'] as List<dynamic>)
        .map((e) => e as int)
        .toList(),
    meaningHint: json['meaning_hint'] as String?,
    readingHint: json['reading_hint'] as String?,
    readingMnemonic: json['reading_mnemonic'] as String,
    readings: (json['readings'] as List<dynamic>)
        .map((e) => KanjiReading.fromJson(e as Map<String, dynamic>))
        .toList(),
    visuallySimilarSubjectIds:
        (json['visually_similar_subject_ids'] as List<dynamic>)
            .map((e) => e as int)
            .toList(),
    auxiliaryMeanings: (json['auxiliary_meanings'] as List<dynamic>)
        .map((e) => AuxiliaryMeaning.fromJson(e as Map<String, dynamic>))
        .toList(),
    createdAt: DateTime.parse(json['created_at'] as String),
    documentUrl: json['document_url'] as String,
    hiddenAt: json['hidden_at'] == null
        ? null
        : DateTime.parse(json['hidden_at'] as String),
    lessonPosition: json['lesson_position'] as int,
    level: json['level'] as int,
    meaningMnemonic: json['meaning_mnemonic'] as String,
    meanings: (json['meanings'] as List<dynamic>)
        .map((e) => Meaning.fromJson(e as Map<String, dynamic>))
        .toList(),
    slug: json['slug'] as String,
    spacedRepetitionSystemId: json['spaced_repetition_system_id'] as int,
  );
}

Map<String, dynamic> _$KanjiToJson(Kanji instance) => <String, dynamic>{
      'auxiliary_meanings':
          instance.auxiliaryMeanings.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt.toIso8601String(),
      'document_url': instance.documentUrl,
      'hidden_at': instance.hiddenAt?.toIso8601String(),
      'lesson_position': instance.lessonPosition,
      'level': instance.level,
      'meaning_mnemonic': instance.meaningMnemonic,
      'meanings': instance.meanings.map((e) => e.toJson()).toList(),
      'slug': instance.slug,
      'spaced_repetition_system_id': instance.spacedRepetitionSystemId,
      'amalgamation_subject_ids': instance.amalgamationSubjectIds,
      'component_subject_ids': instance.componentSubjectIds,
      'meaning_hint': instance.meaningHint,
      'reading_hint': instance.readingHint,
      'reading_mnemonic': instance.readingMnemonic,
      'readings': instance.readings.map((e) => e.toJson()).toList(),
      'visually_similar_subject_ids': instance.visuallySimilarSubjectIds,
    };
