
import 'package:json_annotation/json_annotation.dart';

part 'subject_type.g.dart';

enum SubjectType {
  @JsonValue('kanji')
  kanji,
  @JsonValue('radical')
  radical,
  @JsonValue('vocabulary')
  vocabulary,
}
