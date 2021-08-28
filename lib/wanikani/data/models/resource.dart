import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/core/utils/converters/exception.dart';
import 'package:wanikani_flutter/core/utils/typedefs/generic_serializers.dart';
import 'package:wanikani_flutter/wanikani/domain/entities/resource.dart';
import 'package:wanikani_flutter/wanikani/domain/entities/response.dart';

import 'model.dart';

part 'resource.g.dart';
part 'resource.freezed.dart';

@freezed
class ResourceModel<T extends IModel> with _$ResourceModel<T> {
  @JsonSerializable(genericArgumentFactories: true)
  @Implements.fromString('Resource<T>')
  @Implements.fromString('IResponse<T>')
  const factory ResourceModel(
    int id, {
    required String object,
    required String url,
    required DateTime dataUpdatedAt,
    required T data,
  }) = Data<T>;

  const factory ResourceModel.loading() = Loading;
  const factory ResourceModel.error(
    @JsonKey(toJson: ExceptionConverter.staticToJson, fromJson: ExceptionConverter.staticFromJson)
        Exception exception,
  ) = ErrorDetails;

  factory ResourceModel.fromJson(
    Map<String, dynamic> json,
    GenericFromJson<T> fromJsonT,
  ) =>
      _$_$DataFromJson(
        json,
        (dynamic o) => fromJsonT(o..['object'] = json['object']),
      );
}
