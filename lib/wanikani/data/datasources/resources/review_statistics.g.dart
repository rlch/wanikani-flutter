// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_statistics.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ReviewStatisticsRemoteDataSource
    implements ReviewStatisticsRemoteDataSource {
  _ReviewStatisticsRemoteDataSource(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https:/api.wanikani.com/v2/resets/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<CollectionModel<ReviewStatisticModel>> getAll(
      {hidden,
      ids,
      percentagesGreaterThan,
      percentagesLessThan,
      subjectIds,
      subjectTypes,
      updatedAfter}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'hidden': hidden,
      r'ids': ids,
      r'percentages_greater_than': percentagesGreaterThan,
      r'percentages_less_than': percentagesLessThan,
      r'subject_ids': subjectIds,
      r'subject_types': subjectTypes,
      r'updated_after': updatedAfter?.toJson()
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CollectionModel<ReviewStatisticModel>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CollectionModel<ReviewStatisticModel>.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResourceModel<ReviewStatisticModel>> getById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResourceModel<ReviewStatisticModel>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/$id',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResourceModel<ReviewStatisticModel>.fromJson(_result.data!);
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
