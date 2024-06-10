// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthStatus {
  AuthStatusEnum get statusEnum => throw _privateConstructorUsedError;
  Auth? get auth => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStatusCopyWith<AuthStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStatusCopyWith<$Res> {
  factory $AuthStatusCopyWith(
          AuthStatus value, $Res Function(AuthStatus) then) =
      _$AuthStatusCopyWithImpl<$Res, AuthStatus>;
  @useResult
  $Res call({AuthStatusEnum statusEnum, Auth? auth});

  $AuthCopyWith<$Res>? get auth;
}

/// @nodoc
class _$AuthStatusCopyWithImpl<$Res, $Val extends AuthStatus>
    implements $AuthStatusCopyWith<$Res> {
  _$AuthStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusEnum = null,
    Object? auth = freezed,
  }) {
    return _then(_value.copyWith(
      statusEnum: null == statusEnum
          ? _value.statusEnum
          : statusEnum // ignore: cast_nullable_to_non_nullable
              as AuthStatusEnum,
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthCopyWith<$Res>? get auth {
    if (_value.auth == null) {
      return null;
    }

    return $AuthCopyWith<$Res>(_value.auth!, (value) {
      return _then(_value.copyWith(auth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthStatusCopyWith<$Res>
    implements $AuthStatusCopyWith<$Res> {
  factory _$$_AuthStatusCopyWith(
          _$_AuthStatus value, $Res Function(_$_AuthStatus) then) =
      __$$_AuthStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthStatusEnum statusEnum, Auth? auth});

  @override
  $AuthCopyWith<$Res>? get auth;
}

/// @nodoc
class __$$_AuthStatusCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$_AuthStatus>
    implements _$$_AuthStatusCopyWith<$Res> {
  __$$_AuthStatusCopyWithImpl(
      _$_AuthStatus _value, $Res Function(_$_AuthStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusEnum = null,
    Object? auth = freezed,
  }) {
    return _then(_$_AuthStatus(
      statusEnum: null == statusEnum
          ? _value.statusEnum
          : statusEnum // ignore: cast_nullable_to_non_nullable
              as AuthStatusEnum,
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth?,
    ));
  }
}

/// @nodoc

class _$_AuthStatus with DiagnosticableTreeMixin implements _AuthStatus {
  const _$_AuthStatus({required this.statusEnum, required this.auth});

  @override
  final AuthStatusEnum statusEnum;
  @override
  final Auth? auth;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthStatus(statusEnum: $statusEnum, auth: $auth)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthStatus'))
      ..add(DiagnosticsProperty('statusEnum', statusEnum))
      ..add(DiagnosticsProperty('auth', auth));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStatus &&
            (identical(other.statusEnum, statusEnum) ||
                other.statusEnum == statusEnum) &&
            (identical(other.auth, auth) || other.auth == auth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusEnum, auth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStatusCopyWith<_$_AuthStatus> get copyWith =>
      __$$_AuthStatusCopyWithImpl<_$_AuthStatus>(this, _$identity);
}

abstract class _AuthStatus implements AuthStatus {
  const factory _AuthStatus(
      {required final AuthStatusEnum statusEnum,
      required final Auth? auth}) = _$_AuthStatus;

  @override
  AuthStatusEnum get statusEnum;
  @override
  Auth? get auth;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStatusCopyWith<_$_AuthStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
