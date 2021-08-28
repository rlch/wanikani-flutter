// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spaced_repetition_systems.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _SpacedRepetitionSystemsRemoteDataSource
    implements SpacedRepetitionSystemsRemoteDataSource {
  _SpacedRepetitionSystemsRemoteDataSource(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https:/api.wanikani.com/v2/spaced_repetition_systems/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<CollectionModel<SpacedRepetitionSystemModel>> getAll(
      {ids, updatedAfter}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'ids': ids,
      r'updated_after': updatedAfter?.toJson()
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CollectionModel<SpacedRepetitionSystemModel>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CollectionModel<SpacedRepetitionSystemModel>.fromJson(
      _result.data!,
      (json) =>
          SpacedRepetitionSystemModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ResourceModel<SpacedRepetitionSystemModel>> getById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResourceModel<SpacedRepetitionSystemModel>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/$id',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResourceModel<SpacedRepetitionSystemModel>.fromJson(
      _result.data!,
      (json) =>
          SpacedRepetitionSystemModel.fromJson(json as Map<String, dynamic>),
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
