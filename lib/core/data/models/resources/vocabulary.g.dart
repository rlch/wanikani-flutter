// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vocabulary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VocabularyModel _$VocabularyModelFromJson(Map<String, dynamic> json) {
  return VocabularyModel(
    contextSentences: (json['context_sentences'] as List<dynamic>)
        .map((e) => ContextSentenceModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    pronunciationAudios: (json['pronunciation_audios'] as List<dynamic>)
        .map((e) => PronunciationAudioModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    readings: (json['readings'] as List<dynamic>)
        .map((e) => ContextSentenceModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    auxiliaryMeanings: (json['auxiliary_meanings'] as List<dynamic>)
        .map((e) => AuxiliaryMeaningModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    meanings: (json['meanings'] as List<dynamic>)
        .map((e) => MeaningModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    characters: json['characters'] as String,
    componentSubjectIds: (json['component_subject_ids'] as List<dynamic>)
        .map((e) => e as int)
        .toList(),
    partsOfSpeech: (json['parts_of_speech'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    readingMnemonic: json['reading_mnemonic'] as String,
    createdAt: DateTime.parse(json['created_at'] as String),
    documentUrl: json['document_url'] as String,
    lessonPosition: json['lesson_position'] as int,
    level: json['level'] as int,
    meaningMnemonic: json['meaning_mnemonic'] as String,
    slug: json['slug'] as String,
    spacedRepetitionSystemId: json['spaced_repetition_system_id'] as int,
    hiddenAt: json['hidden_at'] == null
        ? null
        : DateTime.parse(json['hidden_at'] as String),
  )..lastCheckedCacheAt = json['last_checked_cache_at'] == null
      ? null
      : DateTime.parse(json['last_checked_cache_at'] as String);
}

Map<String, dynamic> _$VocabularyModelToJson(VocabularyModel instance) =>
    <String, dynamic>{
      'last_checked_cache_at': instance.lastCheckedCacheAt?.toIso8601String(),
      'characters': instance.characters,
      'created_at': instance.createdAt.toIso8601String(),
      'document_url': instance.documentUrl,
      'hidden_at': instance.hiddenAt?.toIso8601String(),
      'lesson_position': instance.lessonPosition,
      'level': instance.level,
      'meaning_mnemonic': instance.meaningMnemonic,
      'slug': instance.slug,
      'spaced_repetition_system_id': instance.spacedRepetitionSystemId,
      'component_subject_ids': instance.componentSubjectIds,
      'parts_of_speech': instance.partsOfSpeech,
      'reading_mnemonic': instance.readingMnemonic,
      'context_sentences':
          instance.contextSentences.map((e) => e.toJson()).toList(),
      'pronunciation_audios':
          instance.pronunciationAudios.map((e) => e.toJson()).toList(),
      'readings': instance.readings.map((e) => e.toJson()).toList(),
      'auxiliary_meanings':
          instance.auxiliaryMeanings.map((e) => e.toJson()).toList(),
      'meanings': instance.meanings.map((e) => e.toJson()).toList(),
    };

ContextSentenceModel _$ContextSentenceModelFromJson(Map<String, dynamic> json) {
  return ContextSentenceModel(
    en: json['en'] as String?,
    ja: json['ja'] as String?,
  );
}

Map<String, dynamic> _$ContextSentenceModelToJson(
        ContextSentenceModel instance) =>
    <String, dynamic>{
      'en': instance.en,
      'ja': instance.ja,
    };

PronunciationAudioModel _$PronunciationAudioModelFromJson(
    Map<String, dynamic> json) {
  return PronunciationAudioModel(
    metadata: PronunciationAudioMetadataModel.fromJson(
        json['metadata'] as Map<String, dynamic>),
    url: json['url'] as String,
    contentType: json['content_type'] as String,
  );
}

Map<String, dynamic> _$PronunciationAudioModelToJson(
        PronunciationAudioModel instance) =>
    <String, dynamic>{
      'url': instance.url,
      'content_type': instance.contentType,
      'metadata': instance.metadata.toJson(),
    };

PronunciationAudioMetadataModel _$PronunciationAudioMetadataModelFromJson(
    Map<String, dynamic> json) {
  return PronunciationAudioMetadataModel(
    gender: json['gender'] as String,
    sourceId: json['source_id'] as int,
    pronunciation: json['pronunciation'] as String,
    voiceActorId: json['voice_actor_id'] as int,
    voiceActorName: json['voice_actor_name'] as String,
    voiceDescription: json['voice_description'] as String,
  );
}

Map<String, dynamic> _$PronunciationAudioMetadataModelToJson(
        PronunciationAudioMetadataModel instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'source_id': instance.sourceId,
      'pronunciation': instance.pronunciation,
      'voice_actor_id': instance.voiceActorId,
      'voice_actor_name': instance.voiceActorName,
      'voice_description': instance.voiceDescription,
    };
