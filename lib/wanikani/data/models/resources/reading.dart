import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/wanikani/domain/entities/enums/kanji_reading_type.dart';
import 'package:wanikani_flutter/wanikani/domain/entities/resources/reading.dart';

part 'reading.g.dart';

@JsonSerializable()
class KanjiReadingModel extends KanjiReading {
  const KanjiReadingModel({
    required bool primary,
    required String reading,
    required bool acceptedAnswer,
    required KanjiReadingType type,
  }) : super(
          primary: primary,
          reading: reading,
          acceptedAnswer: acceptedAnswer,
          type: type,
        );

  factory KanjiReadingModel.fromJson(Map<String, dynamic> json) =>
      _$KanjiReadingModelFromJson(json);
  Map<String, dynamic> toJson() => _$KanjiReadingModelToJson(this);
}

@JsonSerializable()
class VocabularyReadingModel extends VocabularyReading {
  const VocabularyReadingModel({
    required String reading,
    required bool primary,
    required bool acceptedAnswer,
  }) : super(
          reading: reading,
          primary: primary,
          acceptedAnswer: acceptedAnswer,
        );

  factory VocabularyReadingModel.fromJson(Map<String, dynamic> json) =>
      _$VocabularyReadingModelFromJson(json);
  Map<String, dynamic> toJson() => _$VocabularyReadingModelToJson(this);
}
