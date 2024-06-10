// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_customer_errors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddCustomerErrors {
  String? get nameError => throw _privateConstructorUsedError;
  String? get codeError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCustomerErrorsCopyWith<AddCustomerErrors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCustomerErrorsCopyWith<$Res> {
  factory $AddCustomerErrorsCopyWith(
          AddCustomerErrors value, $Res Function(AddCustomerErrors) then) =
      _$AddCustomerErrorsCopyWithImpl<$Res, AddCustomerErrors>;
  @useResult
  $Res call({String? nameError, String? codeError});
}

/// @nodoc
class _$AddCustomerErrorsCopyWithImpl<$Res, $Val extends AddCustomerErrors>
    implements $AddCustomerErrorsCopyWith<$Res> {
  _$AddCustomerErrorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameError = freezed,
    Object? codeError = freezed,
  }) {
    return _then(_value.copyWith(
      nameError: freezed == nameError
          ? _value.nameError
          : nameError // ignore: cast_nullable_to_non_nullable
              as String?,
      codeError: freezed == codeError
          ? _value.codeError
          : codeError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddCustomerErrorsCopyWith<$Res>
    implements $AddCustomerErrorsCopyWith<$Res> {
  factory _$$_AddCustomerErrorsCopyWith(_$_AddCustomerErrors value,
          $Res Function(_$_AddCustomerErrors) then) =
      __$$_AddCustomerErrorsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? nameError, String? codeError});
}

/// @nodoc
class __$$_AddCustomerErrorsCopyWithImpl<$Res>
    extends _$AddCustomerErrorsCopyWithImpl<$Res, _$_AddCustomerErrors>
    implements _$$_AddCustomerErrorsCopyWith<$Res> {
  __$$_AddCustomerErrorsCopyWithImpl(
      _$_AddCustomerErrors _value, $Res Function(_$_AddCustomerErrors) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameError = freezed,
    Object? codeError = freezed,
  }) {
    return _then(_$_AddCustomerErrors(
      nameError: freezed == nameError
          ? _value.nameError
          : nameError // ignore: cast_nullable_to_non_nullable
              as String?,
      codeError: freezed == codeError
          ? _value.codeError
          : codeError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AddCustomerErrors extends _AddCustomerErrors
    with DiagnosticableTreeMixin {
  const _$_AddCustomerErrors({this.nameError, this.codeError}) : super._();

  @override
  final String? nameError;
  @override
  final String? codeError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddCustomerErrors(nameError: $nameError, codeError: $codeError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddCustomerErrors'))
      ..add(DiagnosticsProperty('nameError', nameError))
      ..add(DiagnosticsProperty('codeError', codeError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCustomerErrors &&
            (identical(other.nameError, nameError) ||
                other.nameError == nameError) &&
            (identical(other.codeError, codeError) ||
                other.codeError == codeError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameError, codeError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCustomerErrorsCopyWith<_$_AddCustomerErrors> get copyWith =>
      __$$_AddCustomerErrorsCopyWithImpl<_$_AddCustomerErrors>(
          this, _$identity);
}

abstract class _AddCustomerErrors extends AddCustomerErrors {
  const factory _AddCustomerErrors(
      {final String? nameError,
      final String? codeError}) = _$_AddCustomerErrors;
  const _AddCustomerErrors._() : super._();

  @override
  String? get nameError;
  @override
  String? get codeError;
  @override
  @JsonKey(ignore: true)
  _$$_AddCustomerErrorsCopyWith<_$_AddCustomerErrors> get copyWith =>
      throw _privateConstructorUsedError;
}
