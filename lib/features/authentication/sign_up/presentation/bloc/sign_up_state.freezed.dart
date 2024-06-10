// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpState {
  String? get message => throw _privateConstructorUsedError;
  int get currentStepIndex => throw _privateConstructorUsedError;
  StepsState get stepsState => throw _privateConstructorUsedError;
  CompanyTypeEnum get selectedCompanyType => throw _privateConstructorUsedError;
  CompanyStepDataModel? get companyStepData =>
      throw _privateConstructorUsedError;
  AddressStepDataModel? get addressStepData =>
      throw _privateConstructorUsedError;
  UserStepDataModel? get userStepData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {String? message,
      int currentStepIndex,
      StepsState stepsState,
      CompanyTypeEnum selectedCompanyType,
      CompanyStepDataModel? companyStepData,
      AddressStepDataModel? addressStepData,
      UserStepDataModel? userStepData});

  $StepsStateCopyWith<$Res> get stepsState;
  $CompanyStepDataModelCopyWith<$Res>? get companyStepData;
  $AddressStepDataModelCopyWith<$Res>? get addressStepData;
  $UserStepDataModelCopyWith<$Res>? get userStepData;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? currentStepIndex = null,
    Object? stepsState = null,
    Object? selectedCompanyType = null,
    Object? companyStepData = freezed,
    Object? addressStepData = freezed,
    Object? userStepData = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      currentStepIndex: null == currentStepIndex
          ? _value.currentStepIndex
          : currentStepIndex // ignore: cast_nullable_to_non_nullable
              as int,
      stepsState: null == stepsState
          ? _value.stepsState
          : stepsState // ignore: cast_nullable_to_non_nullable
              as StepsState,
      selectedCompanyType: null == selectedCompanyType
          ? _value.selectedCompanyType
          : selectedCompanyType // ignore: cast_nullable_to_non_nullable
              as CompanyTypeEnum,
      companyStepData: freezed == companyStepData
          ? _value.companyStepData
          : companyStepData // ignore: cast_nullable_to_non_nullable
              as CompanyStepDataModel?,
      addressStepData: freezed == addressStepData
          ? _value.addressStepData
          : addressStepData // ignore: cast_nullable_to_non_nullable
              as AddressStepDataModel?,
      userStepData: freezed == userStepData
          ? _value.userStepData
          : userStepData // ignore: cast_nullable_to_non_nullable
              as UserStepDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StepsStateCopyWith<$Res> get stepsState {
    return $StepsStateCopyWith<$Res>(_value.stepsState, (value) {
      return _then(_value.copyWith(stepsState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyStepDataModelCopyWith<$Res>? get companyStepData {
    if (_value.companyStepData == null) {
      return null;
    }

    return $CompanyStepDataModelCopyWith<$Res>(_value.companyStepData!,
        (value) {
      return _then(_value.copyWith(companyStepData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressStepDataModelCopyWith<$Res>? get addressStepData {
    if (_value.addressStepData == null) {
      return null;
    }

    return $AddressStepDataModelCopyWith<$Res>(_value.addressStepData!,
        (value) {
      return _then(_value.copyWith(addressStepData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserStepDataModelCopyWith<$Res>? get userStepData {
    if (_value.userStepData == null) {
      return null;
    }

    return $UserStepDataModelCopyWith<$Res>(_value.userStepData!, (value) {
      return _then(_value.copyWith(userStepData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$_SignUpStateCopyWith(
          _$_SignUpState value, $Res Function(_$_SignUpState) then) =
      __$$_SignUpStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message,
      int currentStepIndex,
      StepsState stepsState,
      CompanyTypeEnum selectedCompanyType,
      CompanyStepDataModel? companyStepData,
      AddressStepDataModel? addressStepData,
      UserStepDataModel? userStepData});

  @override
  $StepsStateCopyWith<$Res> get stepsState;
  @override
  $CompanyStepDataModelCopyWith<$Res>? get companyStepData;
  @override
  $AddressStepDataModelCopyWith<$Res>? get addressStepData;
  @override
  $UserStepDataModelCopyWith<$Res>? get userStepData;
}

/// @nodoc
class __$$_SignUpStateCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$_SignUpState>
    implements _$$_SignUpStateCopyWith<$Res> {
  __$$_SignUpStateCopyWithImpl(
      _$_SignUpState _value, $Res Function(_$_SignUpState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? currentStepIndex = null,
    Object? stepsState = null,
    Object? selectedCompanyType = null,
    Object? companyStepData = freezed,
    Object? addressStepData = freezed,
    Object? userStepData = freezed,
  }) {
    return _then(_$_SignUpState(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      currentStepIndex: null == currentStepIndex
          ? _value.currentStepIndex
          : currentStepIndex // ignore: cast_nullable_to_non_nullable
              as int,
      stepsState: null == stepsState
          ? _value.stepsState
          : stepsState // ignore: cast_nullable_to_non_nullable
              as StepsState,
      selectedCompanyType: null == selectedCompanyType
          ? _value.selectedCompanyType
          : selectedCompanyType // ignore: cast_nullable_to_non_nullable
              as CompanyTypeEnum,
      companyStepData: freezed == companyStepData
          ? _value.companyStepData
          : companyStepData // ignore: cast_nullable_to_non_nullable
              as CompanyStepDataModel?,
      addressStepData: freezed == addressStepData
          ? _value.addressStepData
          : addressStepData // ignore: cast_nullable_to_non_nullable
              as AddressStepDataModel?,
      userStepData: freezed == userStepData
          ? _value.userStepData
          : userStepData // ignore: cast_nullable_to_non_nullable
              as UserStepDataModel?,
    ));
  }
}

/// @nodoc

class _$_SignUpState extends _SignUpState with DiagnosticableTreeMixin {
  const _$_SignUpState(
      {this.message,
      required this.currentStepIndex,
      required this.stepsState,
      required this.selectedCompanyType,
      this.companyStepData,
      this.addressStepData,
      this.userStepData})
      : super._();

  @override
  final String? message;
  @override
  final int currentStepIndex;
  @override
  final StepsState stepsState;
  @override
  final CompanyTypeEnum selectedCompanyType;
  @override
  final CompanyStepDataModel? companyStepData;
  @override
  final AddressStepDataModel? addressStepData;
  @override
  final UserStepDataModel? userStepData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState(message: $message, currentStepIndex: $currentStepIndex, stepsState: $stepsState, selectedCompanyType: $selectedCompanyType, companyStepData: $companyStepData, addressStepData: $addressStepData, userStepData: $userStepData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('currentStepIndex', currentStepIndex))
      ..add(DiagnosticsProperty('stepsState', stepsState))
      ..add(DiagnosticsProperty('selectedCompanyType', selectedCompanyType))
      ..add(DiagnosticsProperty('companyStepData', companyStepData))
      ..add(DiagnosticsProperty('addressStepData', addressStepData))
      ..add(DiagnosticsProperty('userStepData', userStepData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpState &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.currentStepIndex, currentStepIndex) ||
                other.currentStepIndex == currentStepIndex) &&
            (identical(other.stepsState, stepsState) ||
                other.stepsState == stepsState) &&
            (identical(other.selectedCompanyType, selectedCompanyType) ||
                other.selectedCompanyType == selectedCompanyType) &&
            (identical(other.companyStepData, companyStepData) ||
                other.companyStepData == companyStepData) &&
            (identical(other.addressStepData, addressStepData) ||
                other.addressStepData == addressStepData) &&
            (identical(other.userStepData, userStepData) ||
                other.userStepData == userStepData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      currentStepIndex,
      stepsState,
      selectedCompanyType,
      companyStepData,
      addressStepData,
      userStepData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      __$$_SignUpStateCopyWithImpl<_$_SignUpState>(this, _$identity);
}

abstract class _SignUpState extends SignUpState {
  const factory _SignUpState(
      {final String? message,
      required final int currentStepIndex,
      required final StepsState stepsState,
      required final CompanyTypeEnum selectedCompanyType,
      final CompanyStepDataModel? companyStepData,
      final AddressStepDataModel? addressStepData,
      final UserStepDataModel? userStepData}) = _$_SignUpState;
  const _SignUpState._() : super._();

  @override
  String? get message;
  @override
  int get currentStepIndex;
  @override
  StepsState get stepsState;
  @override
  CompanyTypeEnum get selectedCompanyType;
  @override
  CompanyStepDataModel? get companyStepData;
  @override
  AddressStepDataModel? get addressStepData;
  @override
  UserStepDataModel? get userStepData;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
