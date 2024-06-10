// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_customer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddCustomerState {
  String? get message => throw _privateConstructorUsedError;
  AccountTypeEnum get selectedAccountType => throw _privateConstructorUsedError;
  bool get navigateToBackWithSuccess => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCustomerStateCopyWith<AddCustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCustomerStateCopyWith<$Res> {
  factory $AddCustomerStateCopyWith(
          AddCustomerState value, $Res Function(AddCustomerState) then) =
      _$AddCustomerStateCopyWithImpl<$Res, AddCustomerState>;
  @useResult
  $Res call(
      {String? message,
      AccountTypeEnum selectedAccountType,
      bool navigateToBackWithSuccess,
      bool isLoading});
}

/// @nodoc
class _$AddCustomerStateCopyWithImpl<$Res, $Val extends AddCustomerState>
    implements $AddCustomerStateCopyWith<$Res> {
  _$AddCustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? selectedAccountType = null,
    Object? navigateToBackWithSuccess = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedAccountType: null == selectedAccountType
          ? _value.selectedAccountType
          : selectedAccountType // ignore: cast_nullable_to_non_nullable
              as AccountTypeEnum,
      navigateToBackWithSuccess: null == navigateToBackWithSuccess
          ? _value.navigateToBackWithSuccess
          : navigateToBackWithSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddCustomerStateCopyWith<$Res>
    implements $AddCustomerStateCopyWith<$Res> {
  factory _$$_AddCustomerStateCopyWith(
          _$_AddCustomerState value, $Res Function(_$_AddCustomerState) then) =
      __$$_AddCustomerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message,
      AccountTypeEnum selectedAccountType,
      bool navigateToBackWithSuccess,
      bool isLoading});
}

/// @nodoc
class __$$_AddCustomerStateCopyWithImpl<$Res>
    extends _$AddCustomerStateCopyWithImpl<$Res, _$_AddCustomerState>
    implements _$$_AddCustomerStateCopyWith<$Res> {
  __$$_AddCustomerStateCopyWithImpl(
      _$_AddCustomerState _value, $Res Function(_$_AddCustomerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? selectedAccountType = null,
    Object? navigateToBackWithSuccess = null,
    Object? isLoading = null,
  }) {
    return _then(_$_AddCustomerState(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedAccountType: null == selectedAccountType
          ? _value.selectedAccountType
          : selectedAccountType // ignore: cast_nullable_to_non_nullable
              as AccountTypeEnum,
      navigateToBackWithSuccess: null == navigateToBackWithSuccess
          ? _value.navigateToBackWithSuccess
          : navigateToBackWithSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddCustomerState
    with DiagnosticableTreeMixin
    implements _AddCustomerState {
  const _$_AddCustomerState(
      {this.message,
      required this.selectedAccountType,
      required this.navigateToBackWithSuccess,
      this.isLoading = false});

  @override
  final String? message;
  @override
  final AccountTypeEnum selectedAccountType;
  @override
  final bool navigateToBackWithSuccess;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddCustomerState(message: $message, selectedAccountType: $selectedAccountType, navigateToBackWithSuccess: $navigateToBackWithSuccess, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddCustomerState'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('selectedAccountType', selectedAccountType))
      ..add(DiagnosticsProperty(
          'navigateToBackWithSuccess', navigateToBackWithSuccess))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCustomerState &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.selectedAccountType, selectedAccountType) ||
                other.selectedAccountType == selectedAccountType) &&
            (identical(other.navigateToBackWithSuccess,
                    navigateToBackWithSuccess) ||
                other.navigateToBackWithSuccess == navigateToBackWithSuccess) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, selectedAccountType,
      navigateToBackWithSuccess, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCustomerStateCopyWith<_$_AddCustomerState> get copyWith =>
      __$$_AddCustomerStateCopyWithImpl<_$_AddCustomerState>(this, _$identity);
}

abstract class _AddCustomerState implements AddCustomerState {
  const factory _AddCustomerState(
      {final String? message,
      required final AccountTypeEnum selectedAccountType,
      required final bool navigateToBackWithSuccess,
      final bool isLoading}) = _$_AddCustomerState;

  @override
  String? get message;
  @override
  AccountTypeEnum get selectedAccountType;
  @override
  bool get navigateToBackWithSuccess;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_AddCustomerStateCopyWith<_$_AddCustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}
