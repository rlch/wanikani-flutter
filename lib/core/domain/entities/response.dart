import 'enums/object.dart';

/// Represents the base strucutre for a response from the Wanikani API.
abstract class IResponse<T> {
  const IResponse({
    required this.object,
    required this.url,
    required this.dataUpdatedAt,
    required this.data,
  });

  final ObjectType object;
  final String url;
  final DateTime dataUpdatedAt;

  /// Note here that while this is dynamic; it should be implemented as [T] for resources
  /// and [List<T>] for collections.
  final dynamic data;
}
