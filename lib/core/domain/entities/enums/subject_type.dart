import 'enum.dart';

const _kanji = 'kanji';
const _radical = 'radical';
const _vocabulary = 'vocabulary';

class SubjectType implements IEnum<String> {
  const SubjectType._(this.value);
  final String value;

  static const SubjectType kanji = SubjectType._(_kanji);
  static const SubjectType radical = SubjectType._(_radical);
  static const SubjectType vocabulary = SubjectType._(_vocabulary);

  String toJson() => this.value;
  factory SubjectType.fromJson(String json) =>
      {_kanji: kanji, _radical: radical, _vocabulary: vocabulary}[json]!;
}
