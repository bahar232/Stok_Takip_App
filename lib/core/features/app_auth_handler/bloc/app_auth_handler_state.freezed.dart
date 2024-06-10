// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_auth_handler_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppAuthHandlerState {
  bool get navigateToHome => throw _privateConstructorUsedError;
  bool get navigateToLogin => throw _privateConstructorUsedError;
  bool get showPopUpForExpiredSession => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppAuthHandlerStateCopyWith<AppAuthHandlerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppAuthHandlerStateCopyWith<$Res> {
  factory $AppAuthHandlerStateCopyWith(
          AppAuthHandlerState value, $Res Function(AppAuthHandlerState) then) =
      _$AppAuthHandlerStateCopyWithImpl<$Res, AppAuthHandlerState>;
  @useResult
  $Res call(
      {bool navigateToHome,
      bool navigateToLogin,
      bool showPopUpForExpiredSession});
}

/// @nodoc
class _$AppAuthHandlerStateCopyWithImpl<$Res, $Val extends AppAuthHandlerState>
    implements $AppAuthHandlerStateCopyWith<$Res> {
  _$AppAuthHandlerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigateToHome = null,
    Object? navigateToLogin = null,
    Object? showPopUpForExpiredSession = null,
  }) {
    return _then(_value.copyWith(
      navigateToHome: null == navigateToHome
          ? _value.navigateToHome
          : navigateToHome // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateToLogin: null == navigateToLogin
          ? _value.navigateToLogin
          : navigateToLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      showPopUpForExpiredSession: null == showPopUpForExpiredSession
          ? _value.showPopUpForExpiredSession
          : showPopUpForExpiredSession // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppAuthHandlerStateCopyWith<$Res>
    implements $AppAuthHandlerStateCopyWith<$Res> {
  factory _$$_AppAuthHandlerStateCopyWith(_$_AppAuthHandlerState value,
          $Res Function(_$_AppAuthHandlerState) then) =
      __$$_AppAuthHandlerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool navigateToHome,
      bool navigateToLogin,
      bool showPopUpForExpiredSession});
}

/// @nodoc
class __$$_AppAuthHandlerStateCopyWithImpl<$Res>
    extends _$AppAuthHandlerStateCopyWithImpl<$Res, _$_AppAuthHandlerState>
    implements _$$_AppAuthHandlerStateCopyWith<$Res> {
  __$$_AppAuthHandlerStateCopyWithImpl(_$_AppAuthHandlerState _value,
      $Res Function(_$_AppAuthHandlerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigateToHome = null,
    Object? navigateToLogin = null,
    Object? showPopUpForExpiredSession = null,
  }) {
    return _then(_$_AppAuthHandlerState(
      navigateToHome: null == navigateToHome
          ? _value.navigateToHome
          : navigateToHome // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateToLogin: null == navigateToLogin
          ? _value.navigateToLogin
          : navigateToLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      showPopUpForExpiredSession: null == showPopUpForExpiredSession
          ? _value.showPopUpForExpiredSession
          : showPopUpForExpiredSession // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppAuthHandlerState
    with DiagnosticableTreeMixin
    implements _AppAuthHandlerState {
  const _$_AppAuthHandlerState(
      {required this.navigateToHome,
      required this.navigateToLogin,
      required this.showPopUpForExpiredSession});

  @override
  final bool navigateToHome;
  @override
  final bool navigateToLogin;
  @override
  final bool showPopUpForExpiredSession;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppAuthHandlerState(navigateToHome: $navigateToHome, navigateToLogin: $navigateToLogin, showPopUpForExpiredSession: $showPopUpForExpiredSession)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppAuthHandlerState'))
      ..add(DiagnosticsProperty('navigateToHome', navigateToHome))
      ..add(DiagnosticsProperty('navigateToLogin', navigateToLogin))
      ..add(DiagnosticsProperty(
          'showPopUpForExpiredSession', showPopUpForExpiredSession));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppAuthHandlerState &&
            (identical(other.navigateToHome, navigateToHome) ||
                other.navigateToHome == navigateToHome) &&
            (identical(other.navigateToLogin, navigateToLogin) ||
                other.navigateToLogin == navigateToLogin) &&
            (identical(other.showPopUpForExpiredSession,
                    showPopUpForExpiredSession) ||
                other.showPopUpForExpiredSession ==
                    showPopUpForExpiredSession));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, navigateToHome, navigateToLogin, showPopUpForExpiredSession);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppAuthHandlerStateCopyWith<_$_AppAuthHandlerState> get copyWith =>
      __$$_AppAuthHandlerStateCopyWithImpl<_$_AppAuthHandlerState>(
          this, _$identity);
}

abstract class _AppAuthHandlerState implements AppAuthHandlerState {
  const factory _AppAuthHandlerState(
      {required final bool navigateToHome,
      required final bool navigateToLogin,
      required final bool showPopUpForExpiredSession}) = _$_AppAuthHandlerState;

  @override
  bool get navigateToHome;
  @override
  bool get navigateToLogin;
  @override
  bool get showPopUpForExpiredSession;
  @override
  @JsonKey(ignore: true)
  _$$_AppAuthHandlerStateCopyWith<_$_AppAuthHandlerState> get copyWith =>
      throw _privateConstructorUsedError;
}
