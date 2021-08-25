part of '../wanikani_services.dart';

@RestApi(baseUrl: '${WaniKaniServices.basePath}/subjects/')
abstract class _Subjects {
  factory _Subjects(Dio dio) = __Subjects;

  /// Returns a collection of all subjects, ordered by ascending id, 1000 at a time.
  @GET('/')
  Future<Collection<Subject>> getAll({
    @Query('ids') List<int>? ids,
    @Query('types') List<SubjectType>? types,
    @Query('slugs') List<String>? slugs,
    @Query('levels') List<int>? levels,
    @Query('hidden') bool? hidden,
    @Query('updated_after') DateTime? updatedAfter,
  });

  /// Retrieves a specific subject by its id.
  @GET('/{id}')
  Future<Resource<Subject>> getById(@Path('id') String id);
}
