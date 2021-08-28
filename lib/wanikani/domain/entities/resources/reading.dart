
import 'package:wanikani_flutter/wanikani/domain/entities/enums/kanji_reading_type.dart';

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

class KanjiReading implements IReading {
  const KanjiReading({
    required this.reading,
    required this.primary,
    required this.acceptedAnswer,
    required this.type,
  });

  /// A singular subject reading.
  final String reading;

  /// Indicates priority in the WaniKani system.
  final bool primary;

  /// Indicates if the reading is used to evaluate user input for correctness.
  final bool acceptedAnswer;

  /// The kanji reading's classfication: kunyomi, nanori, or onyomi.
  final KanjiReadingType type;
}

class VocabularyReading implements IReading {
  const VocabularyReading({
    required this.reading,
    required this.primary,
    required this.acceptedAnswer,
  });

  /// A singular subject reading.
  final String reading;

  /// Indicates priority in the WaniKani system.
  final bool primary;

  /// Indicates if the reading is used to evaluate user input for correctness.
  final bool acceptedAnswer;
}
