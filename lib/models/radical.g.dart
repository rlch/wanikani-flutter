// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'radical.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Radical _$RadicalFromJson(Map<String, dynamic> json) {
  return Radical(
    amalgamationSubjectIds: (json['amalgamation_subject_ids'] as List<dynamic>)
        .map((e) => e as int)
        .toList(),
    characters: json['characters'] as String?,
    characterImages: (json['character_images'] as List<dynamic>)
        .map((e) => CharacterImage.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$RadicalToJson(Radical instance) => <String, dynamic>{
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
      'characters': instance.characters,
      'character_images':
          instance.characterImages.map((e) => e.toJson()).toList(),
    };
