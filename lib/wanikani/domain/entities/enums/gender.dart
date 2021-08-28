import 'package:json_annotation/json_annotation.dart';

part 'gender.g.dart';

enum Gender {
  @JsonValue('male')
  male,
  @JsonValue('female')
  female,
}
