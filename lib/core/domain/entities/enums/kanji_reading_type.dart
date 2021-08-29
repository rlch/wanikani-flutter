import 'enum.dart';

const _kunyomi = 'kunyomi';
const _nanori = 'nanori';
const _onyomi = 'onyomi';

class KanjiReadingType implements IEnum<String> {
  const KanjiReadingType._(this.value);
  final String value;

  static const KanjiReadingType kunyomi = KanjiReadingType._(_kunyomi);
  static const KanjiReadingType nanori = KanjiReadingType._(_nanori);
  static const KanjiReadingType onyomi = KanjiReadingType._(_onyomi);

  String toJson() => this.value;
  factory KanjiReadingType.fromJson(String json) =>
      {_kunyomi: kunyomi, _nanori: nanori, _onyomi: onyomi}[json]!;
}
