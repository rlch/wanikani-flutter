// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ReviewsRemoteDataSource implements ReviewsRemoteDataSource {
  _ReviewsRemoteDataSource(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.wanikani.com/v2/reviews/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<CollectionModel<ReviewModel>> getAll(
      {assignmentIds, ids, subjectIds, updatedAfter}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'assignment_ids': assignmentIds,
      r'ids': ids,
      r'subject_ids': subjectIds,
      r'updated_after': updatedAfter?.toJson()
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CollectionModel<ReviewModel>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CollectionModel<ReviewModel>.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResourceModel<ReviewModel>> getById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResourceModel<ReviewModel>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/$id',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResourceModel<ReviewModel>.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResourceModel<AssignmentModel>> create({required review}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(review.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResourceModel<AssignmentModel>>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/reviews',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResourceModel<AssignmentModel>.fromJson(_result.data!);
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
