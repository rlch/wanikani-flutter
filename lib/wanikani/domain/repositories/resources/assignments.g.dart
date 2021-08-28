// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignments.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _AssignmentsRemoteDataSource implements AssignmentsRemoteDataSource {
  _AssignmentsRemoteDataSource(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https:/api.wanikani.com/v2/assignments';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<CollectionModel<AssignmentModel>> getAll(
      {availableAfter,
      availableBefore,
      burned,
      hidden,
      ids,
      immediatelyAvailableForLessons,
      immediatelyAvailableForReview,
      inReview,
      levels,
      srsStages,
      started,
      subjectIds,
      subjectTypes,
      unlocked,
      updatedAfter}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'available_after': availableAfter?.toJson(),
      r'available_before': availableBefore?.toJson(),
      r'burned': burned,
      r'hidden': hidden,
      r'ids': ids,
      r'immediately_available_for_lessons': immediatelyAvailableForLessons,
      r'immediately_available_for_review': immediatelyAvailableForReview,
      r'in_review': inReview,
      r'levels': levels,
      r'srs_stages': srsStages,
      r'started': started,
      r'subject_ids': subjectIds,
      r'subject_types': subjectTypes,
      r'unlocked': unlocked,
      r'updated_after': updatedAfter?.toJson()
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CollectionModel<AssignmentModel>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CollectionModel<AssignmentModel>.fromJson(
      _result.data!,
      (json) => AssignmentModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ResourceModel<AssignmentModel>> getById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResourceModel<AssignmentModel>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/$id',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResourceModel<AssignmentModel>.fromJson(
      _result.data!,
      (json) => AssignmentModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ResourceModel<AssignmentModel>> start(id, {startedAt}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'started_at': startedAt?.toJson()
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResourceModel<AssignmentModel>>(
            Options(method: 'PUT', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/$id/start',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResourceModel<AssignmentModel>.fromJson(
      _result.data!,
      (json) => AssignmentModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
