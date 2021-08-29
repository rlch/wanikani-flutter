import 'enum.dart';

const _male = 'male';
const _female = 'female';

class Gender implements IEnum<String> {
  const Gender._(this.value);
  final String value;

  static const Gender male = Gender._(_male);
  static const Gender female = Gender._(_female);

  String toJson() => this.value;
  factory Gender.fromJson(String json) => {_male: male, _female: female}[json]!;
}
