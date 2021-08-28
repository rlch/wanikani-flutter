import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/wanikani/domain/entities/resource.dart';
import 'package:wanikani_flutter/wanikani/domain/entities/response.dart';
import 'package:wanikani_flutter/wanikani/typedefs/generic_serializers.dart';

part 'resource.g.dart';

/// Singular resource endpoints deliver information about a single entity, such as an assignment or subject.
@JsonSerializable(genericArgumentFactories: true)
class ResourceModel<T> extends Resource<T> implements IResponse<T> {
  const ResourceModel(
    int id, {
    required String object,
    required String url,
    required DateTime dataUpdatedAt,
    required T data,
  }) : super(
          id,
          object: object,
          url: url,
          dataUpdatedAt: dataUpdatedAt,
          data: data,
        );

  factory ResourceModel.fromJson(
    Map<String, dynamic> json,
    GenericFromJson<T> fromJsonT,
  ) {
    return _$ResourceModelFromJson(
      json,
      (dynamic o) => fromJsonT(o..['object'] = json['object']),
    );
  }
  Map<String, dynamic> toJson(GenericToJson<T> toJsonT) =>
      _$ResourceModelToJson(this, toJsonT);
}
