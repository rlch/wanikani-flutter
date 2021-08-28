import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/core/utils/converters/exception.dart';
import 'package:wanikani_flutter/core/utils/typedefs/generic_serializers.dart';
import 'package:wanikani_flutter/wanikani/domain/entities/collection.dart';
import 'package:wanikani_flutter/wanikani/domain/entities/response.dart';

import 'model.dart';
import 'resource.dart';

part 'collection.g.dart';
part 'collection.freezed.dart';

@freezed
@ExceptionConverter()
class CollectionModel<T extends IModel> with _$CollectionModel<T> {
  @JsonSerializable(genericArgumentFactories: true)
  @Implements.fromString('Collection<T>')
  @Implements.fromString('IResponse<T>')
  const factory CollectionModel(
    int id, {
    required List<ResourceModel<T>> data,
    required PagesModel pages,
    required String object,
    required String url,
    required DateTime dataUpdatedAt,
    required int totalCount,
  }) = Data<T>;

  const factory CollectionModel.loading() = Loading;
  const factory CollectionModel.error(
    @JsonKey(toJson: ExceptionConverter.staticToJson, fromJson: ExceptionConverter.staticFromJson)
        Exception exception,
  ) = ErrorDetails;

  factory CollectionModel.fromJson(
    Map<String, dynamic> json,
    GenericFromJson<T> fromJsonT,
  ) {
    return _$_$DataFromJson(
      json,
      (dynamic o) => fromJsonT(o..['object'] = json['object']),
    );
  }
}

@JsonSerializable()
class PagesModel extends Pages {
  const PagesModel(
    String? nextUrl,
    String? previousUrl,
    int perPage,
  ) : super(nextUrl, previousUrl, perPage);

  factory PagesModel.fromJson(Map<String, dynamic> json) =>
      _$PagesModelFromJson(json);
  Map<String, dynamic> toJson() => _$PagesModelToJson(this);
}
