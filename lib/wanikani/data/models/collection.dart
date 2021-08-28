import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/core/utils/typedefs/generic_serializers.dart';
import 'package:wanikani_flutter/wanikani/domain/entities/collection.dart';
import 'package:wanikani_flutter/wanikani/domain/entities/response.dart';

import 'resource.dart';

part 'collection.g.dart';
part 'collection.freezed.dart';

@freezed
class CollectionModel<T> with _$CollectionModel<T> {
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
  }) = Data;

  const factory CollectionModel.loading() = Loading;
  const factory CollectionModel.error(Exception exception) = ErrorDetails;

  factory CollectionModel.fromJson(
    Map<String, dynamic> json,
    GenericFromJson<T> fromJsonT,
  ) =>
      _$_$DataFromJson(
        json,
        (dynamic o) => fromJsonT(o..['object'] = json['object']),
      );
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
