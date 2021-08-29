// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _UserRemoteDataSource implements UserRemoteDataSource {
  _UserRemoteDataSource(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.wanikani.com/v2/user/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ResourceModel<UserModel>> getInformation() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResourceModel<UserModel>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResourceModel<UserModel>.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResourceModel<UserModel>> update(userPreferences) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(userPreferences.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResourceModel<UserModel>>(
            Options(method: 'PUT', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResourceModel<UserModel>.fromJson(_result.data!);
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
