import 'enum.dart';

const _collection = 'collection';
const _report = 'report';
const _assignment = 'assignment';
const _kanji = 'kanji';
const _levelProgression = 'level_progression';
const _radical = 'radical';
const _reset = 'reset';
const _reviewStatistic = 'review_statistic';
const _review = 'review';
const _spacedRepetitionSystem = 'spaced_repetition_system';
const _studyMaterial = 'study_material';
const _user = 'user';
const _vocabulary = 'vocabulary';

class ObjectType implements IEnum<String> {
  const ObjectType._(this.value);
  final String value;

  static const ObjectType collection = ObjectType._(_collection);
  static const ObjectType report = ObjectType._(_report);
  static const ObjectType assignment = ObjectType._(_assignment);
  static const ObjectType kanji = ObjectType._(_kanji);
  static const ObjectType levelProgression = ObjectType._(_levelProgression);
  static const ObjectType radical = ObjectType._(_radical);
  static const ObjectType reset = ObjectType._(_reset);
  static const ObjectType reviewStatistic = ObjectType._(_reviewStatistic);
  static const ObjectType review = ObjectType._(_review);
  static const ObjectType spacedRepetitionSystem =
      ObjectType._(_spacedRepetitionSystem);
  static const ObjectType studyMaterial = ObjectType._(_studyMaterial);
  static const ObjectType user = ObjectType._(_user);
  static const ObjectType vocabulary = ObjectType._(_vocabulary);

  String toJson() => this.value;
  factory ObjectType.fromJson(String json) => {
        _collection: collection,
        _report: report,
        _assignment: assignment,
        _kanji: kanji,
        _levelProgression: levelProgression,
        _radical: radical,
        _reset: reset,
        _reviewStatistic: reviewStatistic,
        _review: review,
        _spacedRepetitionSystem: spacedRepetitionSystem,
        _studyMaterial: studyMaterial,
        _user: user,
        _vocabulary: vocabulary,
      }[json]!;
}
