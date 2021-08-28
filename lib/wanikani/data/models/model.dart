/// Base class for a model.
abstract class IModel {
  /// When the client has last verified that the cached model is the most updated revision.
  /// This is not necessarily when it was last cached - if the client queries the server such that the model m is returned,
  /// given an `updated_after` date, then we can update a models `lastCheckedCacheAt` if m isn't returned by the server, (and so
  /// is stored in cache) or if m is returned by the server (and therefore we need to create/update m).
  DateTime? lastCheckedCacheAt;
}
