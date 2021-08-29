import 'enum.dart';

const _ascendingLevelThenSubject = 'ascending_level_then_subject';
const _shuffled = 'shuffled';
const _ascendingLevelThenShuffled = 'ascending_level_then_shuffled';

class LessonsPresentationOrder implements IEnum<String> {
  const LessonsPresentationOrder._(this.value);
  final String value;

  static const ascendingLevelThenSubject =
      LessonsPresentationOrder._(_ascendingLevelThenSubject);
  static const shuffled = LessonsPresentationOrder._(_shuffled);
  static const ascendingLevelThenShuffled =
      LessonsPresentationOrder._(_ascendingLevelThenShuffled);

  String toJson() => this.value;
  factory LessonsPresentationOrder.fromJson(String json) => {
        _ascendingLevelThenSubject: ascendingLevelThenSubject,
        _shuffled: shuffled,
        _ascendingLevelThenShuffled: ascendingLevelThenShuffled,
      }[json]!;
}
