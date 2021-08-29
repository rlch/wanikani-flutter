// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reading.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KanjiReadingModel _$KanjiReadingModelFromJson(Map<String, dynamic> json) {
  return KanjiReadingModel(
    primary: json['primary'] as bool,
    reading: json['reading'] as String,
    acceptedAnswer: json['accepted_answer'] as bool,
    type: KanjiReadingType.fromJson(json['type'] as String),
  );
}

Map<String, dynamic> _$KanjiReadingModelToJson(KanjiReadingModel instance) =>
    <String, dynamic>{
      'reading': instance.reading,
      'primary': instance.primary,
      'accepted_answer': instance.acceptedAnswer,
      'type': instance.type.toJson(),
    };

VocabularyReadingModel _$VocabularyReadingModelFromJson(
    Map<String, dynamic> json) {
  return VocabularyReadingModel(
    reading: json['reading'] as String,
    primary: json['primary'] as bool,
    acceptedAnswer: json['accepted_answer'] as bool,
  );
}

Map<String, dynamic> _$VocabularyReadingModelToJson(
        VocabularyReadingModel instance) =>
    <String, dynamic>{
      'reading': instance.reading,
      'primary': instance.primary,
      'accepted_answer': instance.acceptedAnswer,
    };
