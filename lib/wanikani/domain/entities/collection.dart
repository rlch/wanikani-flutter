import 'response.dart';
import 'resource.dart';

/// Collections contain summary data about a bunch of resources, and also include each of the resources.
class Collection<T> implements IResponse<T> {
  const Collection(
    this.id, {
    required this.object,
    required this.url,
    required this.dataUpdatedAt,
    required this.data,
    required this.pages,
    required this.totalCount,
  });

  final int id;

  /// The kind of object returned.
  final String object;

  /// The URL of the request containing all the filters and options you've passed to the API.
  final String url;

  /// For collections, this is the timestamp of the most recently updated resource in the specified scope and is not limited by pagination.
  /// If no resources were returned for the specified scope, then this will be null.
  final DateTime dataUpdatedAt;

  /// Resources returned by the specified scope
  final List<Resource<T>> data;

  final Pages pages;
  final int totalCount;
}

class Pages {
  const Pages(
    this.nextUrl,
    this.previousUrl,
    this.perPage,
  );

  /// The URL of the next page of results. If there are no more results, the value is null.
  final String? nextUrl;

  /// The URL of the previous page of results. If there are no results at all or no previous
  /// page to go to, the value is null.
  final String? previousUrl;

  /// Maximum number of resources delivered for this collection.
  final int perPage;
}