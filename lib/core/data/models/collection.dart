import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/core/domain/entities/enums/object.dart';
import 'package:wanikani_flutter/core/domain/entities/collection.dart';
import 'package:wanikani_flutter/core/domain/entities/resource.dart';
import 'package:wanikani_flutter/core/domain/entities/response.dart';

import 'model.dart';
import 'resource.dart';

part 'collection.g.dart';
part 'collection.freezed.dart';

@freezed
class CollectionModel<T extends IModel> with _$CollectionModel<T> {
  const CollectionModel._();

  @Implements.fromString('Collection<T>')
  @Implements.fromString('IResponse<T>')
  const factory CollectionModel({
    required List<ResourceModel<T>> data,
    required PagesModel pages,
    required ObjectType object,
    required String url,
    required DateTime dataUpdatedAt,
    required int totalCount,
  }) = Data<T>;

  const factory CollectionModel.loading() = Loading;
  const factory CollectionModel.error(Exception exception) = ErrorDetails;

  factory CollectionModel.fromJson(Map<String, dynamic> json) {
    return _$Data<T>(
      data: (json['data'] as List<dynamic>)
          .map((e) => ResourceModel<T>.fromJson(e as Map<String, dynamic>))
          .toList(),
      pages: PagesModel.fromJson(json['pages'] as Map<String, dynamic>),
      object: ObjectType.fromJson(json['object'] as String),
      url: json['url'] as String,
      dataUpdatedAt: DateTime.parse(json['data_updated_at'] as String),
      totalCount: json['total_count'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return this.when(
      (data, pages, object, url, dataUpdatedAt, totalCount) => <String, dynamic>{
        'data': data.map((e) => e.toJson()).toList(),
        'pages': pages.toJson(),
        'object': object.toJson(),
        'url': url,
        'data_updated_at': dataUpdatedAt.toIso8601String(),
        'total_count': totalCount,
      },
      loading: () => throw Exception('Attempted to serialize while loading.'),
      error: (e) => throw Exception('Attemped to serialize with error $e'),
    );
  }

  List<Resource<T>> get resources => this.when(
        (data, pages, object, url, dataUpdatedAt, totalCount) => data.cast<Resource<T>>(),
        loading: () => [],
        error: (e) => throw Exception('Attemped to retrieve resources with error $e'),
      );
}

@JsonSerializable()
class PagesModel extends Pages {
  const PagesModel(
    String? nextUrl,
    String? previousUrl,
    int perPage,
  ) : super(nextUrl, previousUrl, perPage);

  factory PagesModel.fromJson(Map<String, dynamic> json) => _$PagesModelFromJson(json);
  Map<String, dynamic> toJson() => _$PagesModelToJson(this);
}
