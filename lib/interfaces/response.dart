import 'package:wanikani_flutter/typedefs/generic_serializers.dart';

/// Represents the base strucutre for a response from the WaniKani API.
abstract class IResponse<T> {
  const IResponse({
    required this.object,
    required this.url,
    required this.dataUpdatedAt,
    required this.data,
  });

  final String object;
  final String url;
  final DateTime dataUpdatedAt;

  /// Note here that while this is dynamic; it should be implemented as [T] for resources
  /// and [List<T>] for collections.
  final dynamic data;

  Map<String, dynamic> toJson(GenericFromJson<T> fromJsonT);
}
