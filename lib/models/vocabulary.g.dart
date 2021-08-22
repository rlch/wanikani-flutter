// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vocabulary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vocabulary _$VocabularyFromJson(Map<String, dynamic> json) {
  return Vocabulary(
    componentSubjectIds: (json['component_subject_ids'] as List<dynamic>)
        .map((e) => e as int)
        .toList(),
    contextSentences: (json['context_sentences'] as List<dynamic>)
        .map((e) => ContextSentence.fromJson(e as Map<String, dynamic>))
        .toList(),
    partsOfSpeech: (json['parts_of_speech'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    pronunciationAudios: (json['pronunciation_audios'] as List<dynamic>)
        .map((e) => PronunciationAudio.fromJson(e as Map<String, dynamic>))
        .toList(),
    readings: (json['readings'] as List<dynamic>)
        .map((e) => ContextSentence.fromJson(e as Map<String, dynamic>))
        .toList(),
    readingMnemonic: json['reading_mnemonic'] as String,
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

Map<String, dynamic> _$VocabularyToJson(Vocabulary instance) =>
    <String, dynamic>{
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
      'component_subject_ids': instance.componentSubjectIds,
      'context_sentences':
          instance.contextSentences.map((e) => e.toJson()).toList(),
      'parts_of_speech': instance.partsOfSpeech,
      'pronunciation_audios':
          instance.pronunciationAudios.map((e) => e.toJson()).toList(),
      'readings': instance.readings.map((e) => e.toJson()).toList(),
      'reading_mnemonic': instance.readingMnemonic,
    };

ContextSentence _$ContextSentenceFromJson(Map<String, dynamic> json) {
  return ContextSentence(
    en: json['en'] as String,
    ja: json['ja'] as String,
  );
}

Map<String, dynamic> _$ContextSentenceToJson(ContextSentence instance) =>
    <String, dynamic>{
      'en': instance.en,
      'ja': instance.ja,
    };

PronunciationAudio _$PronunciationAudioFromJson(Map<String, dynamic> json) {
  return PronunciationAudio(
    url: json['url'] as String,
    contentType: json['content_type'] as String,
    metadata: PronunciationAudioMetadata.fromJson(
        json['metadata'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PronunciationAudioToJson(PronunciationAudio instance) =>
    <String, dynamic>{
      'url': instance.url,
      'content_type': instance.contentType,
      'metadata': instance.metadata.toJson(),
    };

PronunciationAudioMetadata _$PronunciationAudioMetadataFromJson(
    Map<String, dynamic> json) {
  return PronunciationAudioMetadata(
    gender: json['gender'] as String,
    sourceId: json['source_id'] as int,
    pronunciation: json['pronunciation'] as String,
    voiceActorId: json['voice_actor_id'] as int,
    voiceActorName: json['voice_actor_name'] as String,
    voiceDescription: json['voice_description'] as String,
  );
}

Map<String, dynamic> _$PronunciationAudioMetadataToJson(
        PronunciationAudioMetadata instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'source_id': instance.sourceId,
      'pronunciation': instance.pronunciation,
      'voice_actor_id': instance.voiceActorId,
      'voice_actor_name': instance.voiceActorName,
      'voice_description': instance.voiceDescription,
    };
