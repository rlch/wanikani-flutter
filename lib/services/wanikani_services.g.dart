// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wanikani_services.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class __Assignments implements _Assignments {
  __Assignments(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.wanikani.com/v2/assignments/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Collection<Assignment>> getAll(
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
        _setStreamType<Collection<Assignment>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Collection<Assignment>.fromJson(
      _result.data!,
      (json) => Assignment.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<Resource<Assignment>> getById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Resource<Assignment>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/$id',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Resource<Assignment>.fromJson(
      _result.data!,
      (json) => Assignment.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<Resource<Assignment>> start(id, {startedAt}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'started_at': startedAt?.toJson()
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Resource<Assignment>>(
            Options(method: 'PUT', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/$id/start',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Resource<Assignment>.fromJson(
      _result.data!,
      (json) => Assignment.fromJson(json as Map<String, dynamic>),
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

class __LevelProgressions implements _LevelProgressions {
  __LevelProgressions(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.wanikani.com/v2/level_progressions/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Collection<LevelProgression>> getAll({ids, updatedAfter}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'ids': ids,
      r'updated_after': updatedAfter?.toJson()
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Collection<LevelProgression>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Collection<LevelProgression>.fromJson(
      _result.data!,
      (json) => LevelProgression.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<Resource<LevelProgression>> getById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Resource<LevelProgression>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/$id',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Resource<LevelProgression>.fromJson(
      _result.data!,
      (json) => LevelProgression.fromJson(json as Map<String, dynamic>),
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

class __Resets implements _Resets {
  __Resets(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.wanikani.com/v2/resets/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Collection<Reset>> getAll({ids, updatedAfter}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'ids': ids,
      r'updated_after': updatedAfter?.toJson()
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Collection<Reset>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Collection<Reset>.fromJson(
      _result.data!,
      (json) => Reset.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<Resource<Reset>> getById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Resource<Reset>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/$id',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Resource<Reset>.fromJson(
      _result.data!,
      (json) => Reset.fromJson(json as Map<String, dynamic>),
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

class __Reviews implements _Reviews {
  __Reviews(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.wanikani.com/v2/reviews/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Collection<Review>> getAll(
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
        _setStreamType<Collection<Review>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Collection<Review>.fromJson(
      _result.data!,
      (json) => Review.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<Resource<Review>> getById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Resource<Review>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/$id',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Resource<Review>.fromJson(
      _result.data!,
      (json) => Review.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<Resource<Assignment>> create({required review}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(review.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Resource<Assignment>>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/reviews',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Resource<Assignment>.fromJson(
      _result.data!,
      (json) => Assignment.fromJson(json as Map<String, dynamic>),
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

class __ReviewStatistics implements _ReviewStatistics {
  __ReviewStatistics(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.wanikani.com/v2/resets/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Collection<ReviewStatistic>> getAll(
      {required hidden,
      ids,
      required percentagesGreaterThan,
      required percentagesLessThan,
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
        _setStreamType<Collection<ReviewStatistic>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Collection<ReviewStatistic>.fromJson(
      _result.data!,
      (json) => ReviewStatistic.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<Resource<ReviewStatistic>> getById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Resource<ReviewStatistic>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/$id',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Resource<ReviewStatistic>.fromJson(
      _result.data!,
      (json) => ReviewStatistic.fromJson(json as Map<String, dynamic>),
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

class __SpacedRepetitionSystems implements _SpacedRepetitionSystems {
  __SpacedRepetitionSystems(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.wanikani.com/v2/spaced_repetition_systems/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Collection<SpacedRepetitionSystem>> getAll({ids, updatedAfter}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'ids': ids,
      r'updated_after': updatedAfter?.toJson()
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Collection<SpacedRepetitionSystem>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Collection<SpacedRepetitionSystem>.fromJson(
      _result.data!,
      (json) => SpacedRepetitionSystem.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<Resource<SpacedRepetitionSystem>> getById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Resource<SpacedRepetitionSystem>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/$id',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Resource<SpacedRepetitionSystem>.fromJson(
      _result.data!,
      (json) => SpacedRepetitionSystem.fromJson(json as Map<String, dynamic>),
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

class __StudyMaterials implements _StudyMaterials {
  __StudyMaterials(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.wanikani.com/v2/study_materials/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Collection<StudyMaterial>> getAll({ids, updatedAfter}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'ids': ids,
      r'updated_after': updatedAfter?.toJson()
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Collection<StudyMaterial>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Collection<StudyMaterial>.fromJson(
      _result.data!,
      (json) => StudyMaterial.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<Resource<StudyMaterial>> getById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Resource<StudyMaterial>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/$id',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Resource<StudyMaterial>.fromJson(
      _result.data!,
      (json) => StudyMaterial.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<Resource<StudyMaterial>> create(studyMaterial) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(studyMaterial.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Resource<StudyMaterial>>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Resource<StudyMaterial>.fromJson(
      _result.data!,
      (json) => StudyMaterial.fromJson(json as Map<String, dynamic>),
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
