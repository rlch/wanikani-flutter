import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/wanikani/domain/entities/collection.dart';
import 'package:wanikani_flutter/wanikani/typedefs/generic_serializers.dart';

import 'response.dart';
import 'resource.dart';

part 'collection.g.dart';

/// Collections contain summary data about a bunch of resources, and also include each of the resources.
@JsonSerializable(genericArgumentFactories: true)
class CollectionModel<T> extends Collection<T> implements IResponse<T> {
  const CollectionModel(
    int id, {
    required this.data,
    required this.pages,
    required String object,
    required String url,
    required DateTime dataUpdatedAt,
    required int totalCount,
  }) : super(
          id,
          data: data,
          object: object,
          url: url,
          dataUpdatedAt: dataUpdatedAt,
          pages: pages,
          totalCount: totalCount,
        );

  factory CollectionModel.fromJson(
    Map<String, dynamic> json,
    GenericFromJson<T> fromJsonT,
  ) {
    return _$CollectionModelFromJson(
      json,
      (dynamic o) => fromJsonT(o..['object'] = json['object']),
    );
  }

  Map<String, dynamic> toJson(GenericToJson<T> toJsonT) =>
      _$CollectionModelToJson(this, toJsonT);

  @override
  final PagesModel pages;
  @override
  final List<ResourceModel<T>> data;
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
