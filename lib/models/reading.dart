import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/enums/kanji_reading_type.dart';

part 'reading.g.dart';

abstract class IReading {
  IReading({
    required this.reading,
    required this.primary,
    required this.acceptedAnswer,
  });

  final String reading;
  final bool primary;
  final bool acceptedAnswer;
}

@JsonSerializable()
class KanjiReading implements IReading {
  const KanjiReading({
    required this.reading,
    required this.primary,
    required this.acceptedAnswer,
    required this.type,
  });

  factory KanjiReading.fromJson(Map<String, dynamic> json) =>
      _$KanjiReadingFromJson(json);
  Map<String, dynamic> toJson() => _$KanjiReadingToJson(this);

  /// A singular subject reading.
  final String reading;

  /// Indicates priority in the WaniKani system.
  final bool primary;

  /// Indicates if the reading is used to evaluate user input for correctness.
  final bool acceptedAnswer;

  /// The kanji reading's classfication: kunyomi, nanori, or onyomi.
  final KanjiReadingType type;
}

@JsonSerializable()
class VocabularyReading implements IReading {
  const VocabularyReading({
    required this.reading,
    required this.primary,
    required this.acceptedAnswer,
  });

  factory VocabularyReading.fromJson(Map<String, dynamic> json) =>
      _$VocabularyReadingFromJson(json);
  Map<String, dynamic> toJson() => _$VocabularyReadingToJson(this);

  /// A singular subject reading.
  final String reading;

  /// Indicates priority in the WaniKani system.
  final bool primary;

  /// Indicates if the reading is used to evaluate user input for correctness.
  final bool acceptedAnswer;
}
