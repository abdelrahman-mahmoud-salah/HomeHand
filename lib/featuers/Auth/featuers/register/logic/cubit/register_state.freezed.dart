// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() uploadimage,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? uploadimage,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? uploadimage,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoadingRegister<T> value) loading,
    required TResult Function(UploadImage<T> value) uploadimage,
    required TResult Function(SuccessRegister<T> value) success,
    required TResult Function(ErrorRegister<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoadingRegister<T> value)? loading,
    TResult? Function(UploadImage<T> value)? uploadimage,
    TResult? Function(SuccessRegister<T> value)? success,
    TResult? Function(ErrorRegister<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoadingRegister<T> value)? loading,
    TResult Function(UploadImage<T> value)? uploadimage,
    TResult Function(SuccessRegister<T> value)? success,
    TResult Function(ErrorRegister<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<T, $Res> {
  factory $RegisterStateCopyWith(
          RegisterState<T> value, $Res Function(RegisterState<T>) then) =
      _$RegisterStateCopyWithImpl<T, $Res, RegisterState<T>>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<T, $Res, $Val extends RegisterState<T>>
    implements $RegisterStateCopyWith<T, $Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$RegisterStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RegisterState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() uploadimage,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? uploadimage,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? uploadimage,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoadingRegister<T> value) loading,
    required TResult Function(UploadImage<T> value) uploadimage,
    required TResult Function(SuccessRegister<T> value) success,
    required TResult Function(ErrorRegister<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoadingRegister<T> value)? loading,
    TResult? Function(UploadImage<T> value)? uploadimage,
    TResult? Function(SuccessRegister<T> value)? success,
    TResult? Function(ErrorRegister<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoadingRegister<T> value)? loading,
    TResult Function(UploadImage<T> value)? uploadimage,
    TResult Function(SuccessRegister<T> value)? success,
    TResult Function(ErrorRegister<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements RegisterState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoadingRegisterImplCopyWith<T, $Res> {
  factory _$$LoadingRegisterImplCopyWith(_$LoadingRegisterImpl<T> value,
          $Res Function(_$LoadingRegisterImpl<T>) then) =
      __$$LoadingRegisterImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingRegisterImplCopyWithImpl<T, $Res>
    extends _$RegisterStateCopyWithImpl<T, $Res, _$LoadingRegisterImpl<T>>
    implements _$$LoadingRegisterImplCopyWith<T, $Res> {
  __$$LoadingRegisterImplCopyWithImpl(_$LoadingRegisterImpl<T> _value,
      $Res Function(_$LoadingRegisterImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingRegisterImpl<T> implements LoadingRegister<T> {
  const _$LoadingRegisterImpl();

  @override
  String toString() {
    return 'RegisterState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingRegisterImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() uploadimage,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? uploadimage,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? uploadimage,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoadingRegister<T> value) loading,
    required TResult Function(UploadImage<T> value) uploadimage,
    required TResult Function(SuccessRegister<T> value) success,
    required TResult Function(ErrorRegister<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoadingRegister<T> value)? loading,
    TResult? Function(UploadImage<T> value)? uploadimage,
    TResult? Function(SuccessRegister<T> value)? success,
    TResult? Function(ErrorRegister<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoadingRegister<T> value)? loading,
    TResult Function(UploadImage<T> value)? uploadimage,
    TResult Function(SuccessRegister<T> value)? success,
    TResult Function(ErrorRegister<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingRegister<T> implements RegisterState<T> {
  const factory LoadingRegister() = _$LoadingRegisterImpl<T>;
}

/// @nodoc
abstract class _$$UploadImageImplCopyWith<T, $Res> {
  factory _$$UploadImageImplCopyWith(_$UploadImageImpl<T> value,
          $Res Function(_$UploadImageImpl<T>) then) =
      __$$UploadImageImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$UploadImageImplCopyWithImpl<T, $Res>
    extends _$RegisterStateCopyWithImpl<T, $Res, _$UploadImageImpl<T>>
    implements _$$UploadImageImplCopyWith<T, $Res> {
  __$$UploadImageImplCopyWithImpl(
      _$UploadImageImpl<T> _value, $Res Function(_$UploadImageImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UploadImageImpl<T> implements UploadImage<T> {
  const _$UploadImageImpl();

  @override
  String toString() {
    return 'RegisterState<$T>.uploadimage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadImageImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() uploadimage,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return uploadimage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? uploadimage,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return uploadimage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? uploadimage,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (uploadimage != null) {
      return uploadimage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoadingRegister<T> value) loading,
    required TResult Function(UploadImage<T> value) uploadimage,
    required TResult Function(SuccessRegister<T> value) success,
    required TResult Function(ErrorRegister<T> value) error,
  }) {
    return uploadimage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoadingRegister<T> value)? loading,
    TResult? Function(UploadImage<T> value)? uploadimage,
    TResult? Function(SuccessRegister<T> value)? success,
    TResult? Function(ErrorRegister<T> value)? error,
  }) {
    return uploadimage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoadingRegister<T> value)? loading,
    TResult Function(UploadImage<T> value)? uploadimage,
    TResult Function(SuccessRegister<T> value)? success,
    TResult Function(ErrorRegister<T> value)? error,
    required TResult orElse(),
  }) {
    if (uploadimage != null) {
      return uploadimage(this);
    }
    return orElse();
  }
}

abstract class UploadImage<T> implements RegisterState<T> {
  const factory UploadImage() = _$UploadImageImpl<T>;
}

/// @nodoc
abstract class _$$SuccessRegisterImplCopyWith<T, $Res> {
  factory _$$SuccessRegisterImplCopyWith(_$SuccessRegisterImpl<T> value,
          $Res Function(_$SuccessRegisterImpl<T>) then) =
      __$$SuccessRegisterImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SuccessRegisterImplCopyWithImpl<T, $Res>
    extends _$RegisterStateCopyWithImpl<T, $Res, _$SuccessRegisterImpl<T>>
    implements _$$SuccessRegisterImplCopyWith<T, $Res> {
  __$$SuccessRegisterImplCopyWithImpl(_$SuccessRegisterImpl<T> _value,
      $Res Function(_$SuccessRegisterImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessRegisterImpl<T> implements SuccessRegister<T> {
  const _$SuccessRegisterImpl();

  @override
  String toString() {
    return 'RegisterState<$T>.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessRegisterImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() uploadimage,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? uploadimage,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? uploadimage,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoadingRegister<T> value) loading,
    required TResult Function(UploadImage<T> value) uploadimage,
    required TResult Function(SuccessRegister<T> value) success,
    required TResult Function(ErrorRegister<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoadingRegister<T> value)? loading,
    TResult? Function(UploadImage<T> value)? uploadimage,
    TResult? Function(SuccessRegister<T> value)? success,
    TResult? Function(ErrorRegister<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoadingRegister<T> value)? loading,
    TResult Function(UploadImage<T> value)? uploadimage,
    TResult Function(SuccessRegister<T> value)? success,
    TResult Function(ErrorRegister<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessRegister<T> implements RegisterState<T> {
  const factory SuccessRegister() = _$SuccessRegisterImpl<T>;
}

/// @nodoc
abstract class _$$ErrorRegisterImplCopyWith<T, $Res> {
  factory _$$ErrorRegisterImplCopyWith(_$ErrorRegisterImpl<T> value,
          $Res Function(_$ErrorRegisterImpl<T>) then) =
      __$$ErrorRegisterImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorRegisterImplCopyWithImpl<T, $Res>
    extends _$RegisterStateCopyWithImpl<T, $Res, _$ErrorRegisterImpl<T>>
    implements _$$ErrorRegisterImplCopyWith<T, $Res> {
  __$$ErrorRegisterImplCopyWithImpl(_$ErrorRegisterImpl<T> _value,
      $Res Function(_$ErrorRegisterImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorRegisterImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorRegisterImpl<T> implements ErrorRegister<T> {
  const _$ErrorRegisterImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'RegisterState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorRegisterImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorRegisterImplCopyWith<T, _$ErrorRegisterImpl<T>> get copyWith =>
      __$$ErrorRegisterImplCopyWithImpl<T, _$ErrorRegisterImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() uploadimage,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? uploadimage,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? uploadimage,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoadingRegister<T> value) loading,
    required TResult Function(UploadImage<T> value) uploadimage,
    required TResult Function(SuccessRegister<T> value) success,
    required TResult Function(ErrorRegister<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoadingRegister<T> value)? loading,
    TResult? Function(UploadImage<T> value)? uploadimage,
    TResult? Function(SuccessRegister<T> value)? success,
    TResult? Function(ErrorRegister<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoadingRegister<T> value)? loading,
    TResult Function(UploadImage<T> value)? uploadimage,
    TResult Function(SuccessRegister<T> value)? success,
    TResult Function(ErrorRegister<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorRegister<T> implements RegisterState<T> {
  const factory ErrorRegister({required final String error}) =
      _$ErrorRegisterImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorRegisterImplCopyWith<T, _$ErrorRegisterImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
