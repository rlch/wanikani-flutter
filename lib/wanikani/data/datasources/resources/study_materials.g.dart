// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_materials.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _StudyMaterialsRemoteDataSource
    implements StudyMaterialsRemoteDataSource {
  _StudyMaterialsRemoteDataSource(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.wanikani.com/v2/study_materials/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<CollectionModel<StudyMaterialModel>> getAll(
      {ids, updatedAfter}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'ids': ids,
      r'updated_after': updatedAfter?.toJson()
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CollectionModel<StudyMaterialModel>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CollectionModel<StudyMaterialModel>.fromJson(
      _result.data!,
      (json) => StudyMaterialModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ResourceModel<StudyMaterialModel>> getById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResourceModel<StudyMaterialModel>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/$id',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResourceModel<StudyMaterialModel>.fromJson(
      _result.data!,
      (json) => StudyMaterialModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ResourceModel<StudyMaterialModel>> create(studyMaterial) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(studyMaterial.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResourceModel<StudyMaterialModel>>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResourceModel<StudyMaterialModel>.fromJson(
      _result.data!,
      (json) => StudyMaterialModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<void> update(id, studyMaterial) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(studyMaterial.toJson());
    await _dio.fetch<void>(_setStreamType<void>(
        Options(method: 'PUT', headers: <String, dynamic>{}, extra: _extra)
            .compose(_dio.options, '/$id',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
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
