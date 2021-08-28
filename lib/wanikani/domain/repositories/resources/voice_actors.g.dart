// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voice_actors.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _VoiceActorsRemoteDataSource implements VoiceActorsRemoteDataSource {
  _VoiceActorsRemoteDataSource(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https:/api.wanikani.com/v2/voice_actors/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<CollectionModel<VoiceActorModel>> getAll({ids, updatedAfter}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'ids': ids,
      r'updated_after': updatedAfter?.toJson()
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CollectionModel<VoiceActorModel>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CollectionModel<VoiceActorModel>.fromJson(
      _result.data!,
      (json) => VoiceActorModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ResourceModel<VoiceActorModel>> getById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResourceModel<VoiceActorModel>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/$id',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResourceModel<VoiceActorModel>.fromJson(
      _result.data!,
      (json) => VoiceActorModel.fromJson(json as Map<String, dynamic>),
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
