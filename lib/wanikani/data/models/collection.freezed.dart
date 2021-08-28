// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CollectionModel<T> _$CollectionModelFromJson<T>(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return Data<T>.fromJson(json);
    case 'loading':
      return Loading<T>.fromJson(json);
    case 'error':
      return ErrorDetails<T>.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$CollectionModelTearOff {
  const _$CollectionModelTearOff();

  Data<T> call<T>(int id,
      {required List<ResourceModel<T>> data,
      required PagesModel pages,
      required String object,
      required String url,
      required DateTime dataUpdatedAt,
      required int totalCount}) {
    return Data<T>(
      id,
      data: data,
      pages: pages,
      object: object,
      url: url,
      dataUpdatedAt: dataUpdatedAt,
      totalCount: totalCount,
    );
  }

  Loading<T> loading<T>() {
    return Loading<T>();
  }

  ErrorDetails<T> error<T>(Exception exception) {
    return ErrorDetails<T>(
      exception,
    );
  }

  CollectionModel<T> fromJson<T>(Map<String, Object> json) {
    return CollectionModel<T>.fromJson(json);
  }
}

/// @nodoc
const $CollectionModel = _$CollectionModelTearOff();

/// @nodoc
mixin _$CollectionModel<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, List<ResourceModel<T>> data, PagesModel pages,
            String object, String url, DateTime dataUpdatedAt, int totalCount)
        $default, {
    required TResult Function() loading,
    required TResult Function(Exception exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, List<ResourceModel<T>> data, PagesModel pages,
            String object, String url, DateTime dataUpdatedAt, int totalCount)?
        $default, {
    TResult Function()? loading,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data<T> value) $default, {
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ErrorDetails<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionModelCopyWith<T, $Res> {
  factory $CollectionModelCopyWith(
          CollectionModel<T> value, $Res Function(CollectionModel<T>) then) =
      _$CollectionModelCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$CollectionModelCopyWithImpl<T, $Res>
    implements $CollectionModelCopyWith<T, $Res> {
  _$CollectionModelCopyWithImpl(this._value, this._then);

  final CollectionModel<T> _value;
  // ignore: unused_field
  final $Res Function(CollectionModel<T>) _then;
}

/// @nodoc
abstract class $DataCopyWith<T, $Res> {
  factory $DataCopyWith(Data<T> value, $Res Function(Data<T>) then) =
      _$DataCopyWithImpl<T, $Res>;
  $Res call(
      {int id,
      List<ResourceModel<T>> data,
      PagesModel pages,
      String object,
      String url,
      DateTime dataUpdatedAt,
      int totalCount});
}

/// @nodoc
class _$DataCopyWithImpl<T, $Res> extends _$CollectionModelCopyWithImpl<T, $Res>
    implements $DataCopyWith<T, $Res> {
  _$DataCopyWithImpl(Data<T> _value, $Res Function(Data<T>) _then)
      : super(_value, (v) => _then(v as Data<T>));

  @override
  Data<T> get _value => super._value as Data<T>;

  @override
  $Res call({
    Object? id = freezed,
    Object? data = freezed,
    Object? pages = freezed,
    Object? object = freezed,
    Object? url = freezed,
    Object? dataUpdatedAt = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(Data<T>(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ResourceModel<T>>,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as PagesModel,
      object: object == freezed
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      dataUpdatedAt: dataUpdatedAt == freezed
          ? _value.dataUpdatedAt
          : dataUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(genericArgumentFactories: true)
@Implements.fromString('Collection<T>')
@Implements.fromString('IResponse<T>')
class _$Data<T> implements Data<T> {
  const _$Data(this.id,
      {required this.data,
      required this.pages,
      required this.object,
      required this.url,
      required this.dataUpdatedAt,
      required this.totalCount});

  factory _$Data.fromJson(Map<String, dynamic> json) => _$_$DataFromJson(json);

  @override
  final int id;
  @override
  final List<ResourceModel<T>> data;
  @override
  final PagesModel pages;
  @override
  final String object;
  @override
  final String url;
  @override
  final DateTime dataUpdatedAt;
  @override
  final int totalCount;

  @override
  String toString() {
    return 'CollectionModel<$T>(id: $id, data: $data, pages: $pages, object: $object, url: $url, dataUpdatedAt: $dataUpdatedAt, totalCount: $totalCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data<T> &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.pages, pages) ||
                const DeepCollectionEquality().equals(other.pages, pages)) &&
            (identical(other.object, object) ||
                const DeepCollectionEquality().equals(other.object, object)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.dataUpdatedAt, dataUpdatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.dataUpdatedAt, dataUpdatedAt)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(pages) ^
      const DeepCollectionEquality().hash(object) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(dataUpdatedAt) ^
      const DeepCollectionEquality().hash(totalCount);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<T, Data<T>> get copyWith =>
      _$DataCopyWithImpl<T, Data<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, List<ResourceModel<T>> data, PagesModel pages,
            String object, String url, DateTime dataUpdatedAt, int totalCount)
        $default, {
    required TResult Function() loading,
    required TResult Function(Exception exception) error,
  }) {
    return $default(id, data, pages, object, url, dataUpdatedAt, totalCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, List<ResourceModel<T>> data, PagesModel pages,
            String object, String url, DateTime dataUpdatedAt, int totalCount)?
        $default, {
    TResult Function()? loading,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, data, pages, object, url, dataUpdatedAt, totalCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data<T> value) $default, {
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ErrorDetails<T> value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$DataToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class Data<T>
    implements CollectionModel<T>, Collection<T>, IResponse<T> {
  const factory Data(int id,
      {required List<ResourceModel<T>> data,
      required PagesModel pages,
      required String object,
      required String url,
      required DateTime dataUpdatedAt,
      required int totalCount}) = _$Data<T>;

  factory Data.fromJson(Map<String, dynamic> json) = _$Data<T>.fromJson;

  int get id => throw _privateConstructorUsedError;
  List<ResourceModel<T>> get data => throw _privateConstructorUsedError;
  PagesModel get pages => throw _privateConstructorUsedError;
  String get object => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  DateTime get dataUpdatedAt => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<T, Data<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<T, $Res> {
  factory $LoadingCopyWith(Loading<T> value, $Res Function(Loading<T>) then) =
      _$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<T, $Res>
    extends _$CollectionModelCopyWithImpl<T, $Res>
    implements $LoadingCopyWith<T, $Res> {
  _$LoadingCopyWithImpl(Loading<T> _value, $Res Function(Loading<T>) _then)
      : super(_value, (v) => _then(v as Loading<T>));

  @override
  Loading<T> get _value => super._value as Loading<T>;
}

/// @nodoc
@JsonSerializable()
class _$Loading<T> implements Loading<T> {
  const _$Loading();

  factory _$Loading.fromJson(Map<String, dynamic> json) =>
      _$_$LoadingFromJson(json);

  @override
  String toString() {
    return 'CollectionModel<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, List<ResourceModel<T>> data, PagesModel pages,
            String object, String url, DateTime dataUpdatedAt, int totalCount)
        $default, {
    required TResult Function() loading,
    required TResult Function(Exception exception) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, List<ResourceModel<T>> data, PagesModel pages,
            String object, String url, DateTime dataUpdatedAt, int totalCount)?
        $default, {
    TResult Function()? loading,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data<T> value) $default, {
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ErrorDetails<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$LoadingToJson(this)..['runtimeType'] = 'loading';
  }
}

abstract class Loading<T> implements CollectionModel<T> {
  const factory Loading() = _$Loading<T>;

  factory Loading.fromJson(Map<String, dynamic> json) = _$Loading<T>.fromJson;
}

/// @nodoc
abstract class $ErrorDetailsCopyWith<T, $Res> {
  factory $ErrorDetailsCopyWith(
          ErrorDetails<T> value, $Res Function(ErrorDetails<T>) then) =
      _$ErrorDetailsCopyWithImpl<T, $Res>;
  $Res call({Exception exception});
}

/// @nodoc
class _$ErrorDetailsCopyWithImpl<T, $Res>
    extends _$CollectionModelCopyWithImpl<T, $Res>
    implements $ErrorDetailsCopyWith<T, $Res> {
  _$ErrorDetailsCopyWithImpl(
      ErrorDetails<T> _value, $Res Function(ErrorDetails<T>) _then)
      : super(_value, (v) => _then(v as ErrorDetails<T>));

  @override
  ErrorDetails<T> get _value => super._value as ErrorDetails<T>;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(ErrorDetails<T>(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorDetails<T> implements ErrorDetails<T> {
  const _$ErrorDetails(this.exception);

  factory _$ErrorDetails.fromJson(Map<String, dynamic> json) =>
      _$_$ErrorDetailsFromJson(json);

  @override
  final Exception exception;

  @override
  String toString() {
    return 'CollectionModel<$T>.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorDetails<T> &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  $ErrorDetailsCopyWith<T, ErrorDetails<T>> get copyWith =>
      _$ErrorDetailsCopyWithImpl<T, ErrorDetails<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, List<ResourceModel<T>> data, PagesModel pages,
            String object, String url, DateTime dataUpdatedAt, int totalCount)
        $default, {
    required TResult Function() loading,
    required TResult Function(Exception exception) error,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, List<ResourceModel<T>> data, PagesModel pages,
            String object, String url, DateTime dataUpdatedAt, int totalCount)?
        $default, {
    TResult Function()? loading,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data<T> value) $default, {
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ErrorDetails<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ErrorDetailsToJson(this)..['runtimeType'] = 'error';
  }
}

abstract class ErrorDetails<T> implements CollectionModel<T> {
  const factory ErrorDetails(Exception exception) = _$ErrorDetails<T>;

  factory ErrorDetails.fromJson(Map<String, dynamic> json) =
      _$ErrorDetails<T>.fromJson;

  Exception get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorDetailsCopyWith<T, ErrorDetails<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
