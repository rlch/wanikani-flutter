import 'package:wanikani_flutter/core/domain/entities/enums/object.dart';
import 'package:wanikani_flutter/core/domain/entities/response.dart';

/// Singular resource endpoints deliver information about a single entity, such as an assignment or subject.
class Resource<T> implements IResponse<T> {
  const Resource(
    this.id, {
    required this.object,
    required this.url,
    required this.dataUpdatedAt,
    required this.data,
  });

  final int? id;

  /// The kind of object returned.
  final ObjectType object;

  /// The URL of the request.
  /// Resources have a single URL and don't need to be filtered, so the URL will be the same in both resource and collection responses.
  final String url;

  /// For a resource, then this is the last time that particular resource was updated.
  final DateTime dataUpdatedAt;

  /// For resources, these are the attributes that are specific to that particular instance and kind of resource.
  final T data;
}
