import 'package:json_annotation/json_annotation.dart';

part 'kanji_reading_type.g.dart';

enum KanjiReadingType {
  @JsonValue('kunyomi')
  kunyomi,
  @JsonValue('nanori')
  nanori,
  @JsonValue('onyomi')
  onyomi,
}
