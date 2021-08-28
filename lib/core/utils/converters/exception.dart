import 'json_converter.dart';

class ExceptionConverter extends JsonConverter<Exception, String> {
  const ExceptionConverter();

  @override
  Exception fromJson(String json) => staticFromJson(json);

  @override
  String toJson(Exception object) => staticToJson(object);

  static Exception staticFromJson(String json) => Exception(json);
  static String staticToJson(Exception object) => object.toString();
}
