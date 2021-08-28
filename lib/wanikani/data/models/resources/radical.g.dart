// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'radical.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RadicalModel _$RadicalModelFromJson(Map<String, dynamic> json) {
  return RadicalModel(
    auxiliaryMeanings: (json['auxiliary_meanings'] as List<dynamic>)
        .map((e) => AuxiliaryMeaningModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    characterImages: (json['character_images'] as List<dynamic>)
        .map((e) => CharacterImageModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    meanings: (json['meanings'] as List<dynamic>)
        .map((e) => MeaningModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    createdAt: DateTime.parse(json['created_at'] as String),
    documentUrl: json['document_url'] as String,
    lessonPosition: json['lesson_position'] as int,
    level: json['level'] as int,
    meaningMnemonic: json['meaning_mnemonic'] as String,
    slug: json['slug'] as String,
    spacedRepetitionSystemId: json['spaced_repetition_system_id'] as int,
    amalgamationSubjectIds: (json['amalgamation_subject_ids'] as List<dynamic>)
        .map((e) => e as int)
        .toList(),
    hiddenAt: json['hidden_at'] == null
        ? null
        : DateTime.parse(json['hidden_at'] as String),
    characters: json['characters'] as String?,
  );
}

Map<String, dynamic> _$RadicalModelToJson(RadicalModel instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt.toIso8601String(),
      'document_url': instance.documentUrl,
      'hidden_at': instance.hiddenAt?.toIso8601String(),
      'lesson_position': instance.lessonPosition,
      'level': instance.level,
      'meaning_mnemonic': instance.meaningMnemonic,
      'slug': instance.slug,
      'spaced_repetition_system_id': instance.spacedRepetitionSystemId,
      'amalgamation_subject_ids': instance.amalgamationSubjectIds,
      'characters': instance.characters,
      'auxiliary_meanings':
          instance.auxiliaryMeanings.map((e) => e.toJson()).toList(),
      'character_images':
          instance.characterImages.map((e) => e.toJson()).toList(),
      'meanings': instance.meanings.map((e) => e.toJson()).toList(),
    };
