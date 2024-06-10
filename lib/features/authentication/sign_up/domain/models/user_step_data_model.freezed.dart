// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_step_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserStepDataModel {
  String get userName => throw _privateConstructorUsedError;
  String get userNameAndSurname => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get userTC => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStepDataModelCopyWith<UserStepDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStepDataModelCopyWith<$Res> {
  factory $UserStepDataModelCopyWith(
          UserStepDataModel value, $Res Function(UserStepDataModel) then) =
      _$UserStepDataModelCopyWithImpl<$Res, UserStepDataModel>;
  @useResult
  $Res call(
      {String userName,
      String userNameAndSurname,
      String password,
      String userTC});
}

/// @nodoc
class _$UserStepDataModelCopyWithImpl<$Res, $Val extends UserStepDataModel>
    implements $UserStepDataModelCopyWith<$Res> {
  _$UserStepDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? userNameAndSurname = null,
    Object? password = null,
    Object? userTC = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userNameAndSurname: null == userNameAndSurname
          ? _value.userNameAndSurname
          : userNameAndSurname // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userTC: null == userTC
          ? _value.userTC
          : userTC // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserStepDataModelCopyWith<$Res>
    implements $UserStepDataModelCopyWith<$Res> {
  factory _$$_UserStepDataModelCopyWith(_$_UserStepDataModel value,
          $Res Function(_$_UserStepDataModel) then) =
      __$$_UserStepDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userName,
      String userNameAndSurname,
      String password,
      String userTC});
}

/// @nodoc
class __$$_UserStepDataModelCopyWithImpl<$Res>
    extends _$UserStepDataModelCopyWithImpl<$Res, _$_UserStepDataModel>
    implements _$$_UserStepDataModelCopyWith<$Res> {
  __$$_UserStepDataModelCopyWithImpl(
      _$_UserStepDataModel _value, $Res Function(_$_UserStepDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? userNameAndSurname = null,
    Object? password = null,
    Object? userTC = null,
  }) {
    return _then(_$_UserStepDataModel(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userNameAndSurname: null == userNameAndSurname
          ? _value.userNameAndSurname
          : userNameAndSurname // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userTC: null == userTC
          ? _value.userTC
          : userTC // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserStepDataModel
    with DiagnosticableTreeMixin
    implements _UserStepDataModel {
  const _$_UserStepDataModel(
      {required this.userName,
      required this.userNameAndSurname,
      required this.password,
      required this.userTC});

  @override
  final String userName;
  @override
  final String userNameAndSurname;
  @override
  final String password;
  @override
  final String userTC;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserStepDataModel(userName: $userName, userNameAndSurname: $userNameAndSurname, password: $password, userTC: $userTC)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserStepDataModel'))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('userNameAndSurname', userNameAndSurname))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('userTC', userTC));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserStepDataModel &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userNameAndSurname, userNameAndSurname) ||
                other.userNameAndSurname == userNameAndSurname) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.userTC, userTC) || other.userTC == userTC));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userName, userNameAndSurname, password, userTC);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStepDataModelCopyWith<_$_UserStepDataModel> get copyWith =>
      __$$_UserStepDataModelCopyWithImpl<_$_UserStepDataModel>(
          this, _$identity);
}

abstract class _UserStepDataModel implements UserStepDataModel {
  const factory _UserStepDataModel(
      {required final String userName,
      required final String userNameAndSurname,
      required final String password,
      required final String userTC}) = _$_UserStepDataModel;

  @override
  String get userName;
  @override
  String get userNameAndSurname;
  @override
  String get password;
  @override
  String get userTC;
  @override
  @JsonKey(ignore: true)
  _$$_UserStepDataModelCopyWith<_$_UserStepDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
