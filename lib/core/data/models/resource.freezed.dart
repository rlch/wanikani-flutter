// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'resource.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResourceModelTearOff {
  const _$ResourceModelTearOff();

  Data<T> call<T extends IModel>(int? id,
      {required ObjectType object,
      required String url,
      required DateTime dataUpdatedAt,
      required T data}) {
    return Data<T>(
      id,
      object: object,
      url: url,
      dataUpdatedAt: dataUpdatedAt,
      data: data,
    );
  }

  Loading<T> loading<T extends IModel>() {
    return Loading<T>();
  }

  ErrorDetails<T> error<T extends IModel>(Exception exception) {
    return ErrorDetails<T>(
      exception,
    );
  }
}

/// @nodoc
const $ResourceModel = _$ResourceModelTearOff();

/// @nodoc
mixin _$ResourceModel<T extends IModel> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int? id, ObjectType object, String url,
            DateTime dataUpdatedAt, T data)
        $default, {
    required TResult Function() loading,
    required TResult Function(Exception exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? id, ObjectType object, String url,
            DateTime dataUpdatedAt, T data)?
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
}

/// @nodoc
abstract class $ResourceModelCopyWith<T extends IModel, $Res> {
  factory $ResourceModelCopyWith(
          ResourceModel<T> value, $Res Function(ResourceModel<T>) then) =
      _$ResourceModelCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ResourceModelCopyWithImpl<T extends IModel, $Res>
    implements $ResourceModelCopyWith<T, $Res> {
  _$ResourceModelCopyWithImpl(this._value, this._then);

  final ResourceModel<T> _value;
  // ignore: unused_field
  final $Res Function(ResourceModel<T>) _then;
}

/// @nodoc
abstract class $DataCopyWith<T extends IModel, $Res> {
  factory $DataCopyWith(Data<T> value, $Res Function(Data<T>) then) =
      _$DataCopyWithImpl<T, $Res>;
  $Res call(
      {int? id, ObjectType object, String url, DateTime dataUpdatedAt, T data});
}

/// @nodoc
class _$DataCopyWithImpl<T extends IModel, $Res>
    extends _$ResourceModelCopyWithImpl<T, $Res>
    implements $DataCopyWith<T, $Res> {
  _$DataCopyWithImpl(Data<T> _value, $Res Function(Data<T>) _then)
      : super(_value, (v) => _then(v as Data<T>));

  @override
  Data<T> get _value => super._value as Data<T>;

  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? url = freezed,
    Object? dataUpdatedAt = freezed,
    Object? data = freezed,
  }) {
    return _then(Data<T>(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      object: object == freezed
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as ObjectType,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      dataUpdatedAt: dataUpdatedAt == freezed
          ? _value.dataUpdatedAt
          : dataUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

@Implements.fromString('Resource<T>')
@Implements.fromString('IResponse<T>')
class _$Data<T extends IModel> extends Data<T> {
  const _$Data(this.id,
      {required this.object,
      required this.url,
      required this.dataUpdatedAt,
      required this.data})
      : super._();

  @override
  final int? id;
  @override
  final ObjectType object;
  @override
  final String url;
  @override
  final DateTime dataUpdatedAt;
  @override
  final T data;

  @override
  String toString() {
    return 'ResourceModel<$T>(id: $id, object: $object, url: $url, dataUpdatedAt: $dataUpdatedAt, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data<T> &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.object, object) ||
                const DeepCollectionEquality().equals(other.object, object)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.dataUpdatedAt, dataUpdatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.dataUpdatedAt, dataUpdatedAt)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(object) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(dataUpdatedAt) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<T, Data<T>> get copyWith =>
      _$DataCopyWithImpl<T, Data<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int? id, ObjectType object, String url,
            DateTime dataUpdatedAt, T data)
        $default, {
    required TResult Function() loading,
    required TResult Function(Exception exception) error,
  }) {
    return $default(id, object, url, dataUpdatedAt, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? id, ObjectType object, String url,
            DateTime dataUpdatedAt, T data)?
        $default, {
    TResult Function()? loading,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, object, url, dataUpdatedAt, data);
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
}

abstract class Data<T extends IModel> extends ResourceModel<T>
    implements Resource<T>, IResponse<T> {
  const factory Data(int? id,
      {required ObjectType object,
      required String url,
      required DateTime dataUpdatedAt,
      required T data}) = _$Data<T>;
  const Data._() : super._();

  int? get id => throw _privateConstructorUsedError;
  ObjectType get object => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  DateTime get dataUpdatedAt => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<T, Data<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<T extends IModel, $Res> {
  factory $LoadingCopyWith(Loading<T> value, $Res Function(Loading<T>) then) =
      _$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<T extends IModel, $Res>
    extends _$ResourceModelCopyWithImpl<T, $Res>
    implements $LoadingCopyWith<T, $Res> {
  _$LoadingCopyWithImpl(Loading<T> _value, $Res Function(Loading<T>) _then)
      : super(_value, (v) => _then(v as Loading<T>));

  @override
  Loading<T> get _value => super._value as Loading<T>;
}

/// @nodoc

class _$Loading<T extends IModel> extends Loading<T> {
  const _$Loading() : super._();

  @override
  String toString() {
    return 'ResourceModel<$T>.loading()';
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
    TResult Function(int? id, ObjectType object, String url,
            DateTime dataUpdatedAt, T data)
        $default, {
    required TResult Function() loading,
    required TResult Function(Exception exception) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? id, ObjectType object, String url,
            DateTime dataUpdatedAt, T data)?
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
}

abstract class Loading<T extends IModel> extends ResourceModel<T> {
  const factory Loading() = _$Loading<T>;
  const Loading._() : super._();
}

/// @nodoc
abstract class $ErrorDetailsCopyWith<T extends IModel, $Res> {
  factory $ErrorDetailsCopyWith(
          ErrorDetails<T> value, $Res Function(ErrorDetails<T>) then) =
      _$ErrorDetailsCopyWithImpl<T, $Res>;
  $Res call({Exception exception});
}

/// @nodoc
class _$ErrorDetailsCopyWithImpl<T extends IModel, $Res>
    extends _$ResourceModelCopyWithImpl<T, $Res>
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

class _$ErrorDetails<T extends IModel> extends ErrorDetails<T> {
  const _$ErrorDetails(this.exception) : super._();

  @override
  final Exception exception;

  @override
  String toString() {
    return 'ResourceModel<$T>.error(exception: $exception)';
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
    TResult Function(int? id, ObjectType object, String url,
            DateTime dataUpdatedAt, T data)
        $default, {
    required TResult Function() loading,
    required TResult Function(Exception exception) error,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? id, ObjectType object, String url,
            DateTime dataUpdatedAt, T data)?
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
}

abstract class ErrorDetails<T extends IModel> extends ResourceModel<T> {
  const factory ErrorDetails(Exception exception) = _$ErrorDetails<T>;
  const ErrorDetails._() : super._();

  Exception get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorDetailsCopyWith<T, ErrorDetails<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
