// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_progressions.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _LevelProgressionsRemoteDataSource
    implements LevelProgressionsRemoteDataSource {
  _LevelProgressionsRemoteDataSource(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.wanikani.com/v2/level_progressions/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<CollectionModel<LevelProgressionModel>> getAll(
      {ids, updatedAfter}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'ids': ids,
      r'updated_after': updatedAfter?.toJson()
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CollectionModel<LevelProgressionModel>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value =
        CollectionModel<LevelProgressionModel>.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResourceModel<LevelProgressionModel>> getById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResourceModel<LevelProgressionModel>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/$id',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResourceModel<LevelProgressionModel>.fromJson(_result.data!);
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
