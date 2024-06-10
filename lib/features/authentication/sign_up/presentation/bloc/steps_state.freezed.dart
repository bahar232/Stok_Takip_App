// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'steps_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StepsState {
  StepModel get companyStep => throw _privateConstructorUsedError;
  StepModel get addressStep => throw _privateConstructorUsedError;
  StepModel get userStep => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StepsStateCopyWith<StepsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepsStateCopyWith<$Res> {
  factory $StepsStateCopyWith(
          StepsState value, $Res Function(StepsState) then) =
      _$StepsStateCopyWithImpl<$Res, StepsState>;
  @useResult
  $Res call({StepModel companyStep, StepModel addressStep, StepModel userStep});

  $StepModelCopyWith<$Res> get companyStep;
  $StepModelCopyWith<$Res> get addressStep;
  $StepModelCopyWith<$Res> get userStep;
}

/// @nodoc
class _$StepsStateCopyWithImpl<$Res, $Val extends StepsState>
    implements $StepsStateCopyWith<$Res> {
  _$StepsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyStep = null,
    Object? addressStep = null,
    Object? userStep = null,
  }) {
    return _then(_value.copyWith(
      companyStep: null == companyStep
          ? _value.companyStep
          : companyStep // ignore: cast_nullable_to_non_nullable
              as StepModel,
      addressStep: null == addressStep
          ? _value.addressStep
          : addressStep // ignore: cast_nullable_to_non_nullable
              as StepModel,
      userStep: null == userStep
          ? _value.userStep
          : userStep // ignore: cast_nullable_to_non_nullable
              as StepModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StepModelCopyWith<$Res> get companyStep {
    return $StepModelCopyWith<$Res>(_value.companyStep, (value) {
      return _then(_value.copyWith(companyStep: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StepModelCopyWith<$Res> get addressStep {
    return $StepModelCopyWith<$Res>(_value.addressStep, (value) {
      return _then(_value.copyWith(addressStep: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StepModelCopyWith<$Res> get userStep {
    return $StepModelCopyWith<$Res>(_value.userStep, (value) {
      return _then(_value.copyWith(userStep: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StepsStateCopyWith<$Res>
    implements $StepsStateCopyWith<$Res> {
  factory _$$_StepsStateCopyWith(
          _$_StepsState value, $Res Function(_$_StepsState) then) =
      __$$_StepsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StepModel companyStep, StepModel addressStep, StepModel userStep});

  @override
  $StepModelCopyWith<$Res> get companyStep;
  @override
  $StepModelCopyWith<$Res> get addressStep;
  @override
  $StepModelCopyWith<$Res> get userStep;
}

/// @nodoc
class __$$_StepsStateCopyWithImpl<$Res>
    extends _$StepsStateCopyWithImpl<$Res, _$_StepsState>
    implements _$$_StepsStateCopyWith<$Res> {
  __$$_StepsStateCopyWithImpl(
      _$_StepsState _value, $Res Function(_$_StepsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyStep = null,
    Object? addressStep = null,
    Object? userStep = null,
  }) {
    return _then(_$_StepsState(
      companyStep: null == companyStep
          ? _value.companyStep
          : companyStep // ignore: cast_nullable_to_non_nullable
              as StepModel,
      addressStep: null == addressStep
          ? _value.addressStep
          : addressStep // ignore: cast_nullable_to_non_nullable
              as StepModel,
      userStep: null == userStep
          ? _value.userStep
          : userStep // ignore: cast_nullable_to_non_nullable
              as StepModel,
    ));
  }
}

/// @nodoc

class _$_StepsState extends _StepsState with DiagnosticableTreeMixin {
  const _$_StepsState(
      {required this.companyStep,
      required this.addressStep,
      required this.userStep})
      : super._();

  @override
  final StepModel companyStep;
  @override
  final StepModel addressStep;
  @override
  final StepModel userStep;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StepsState(companyStep: $companyStep, addressStep: $addressStep, userStep: $userStep)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StepsState'))
      ..add(DiagnosticsProperty('companyStep', companyStep))
      ..add(DiagnosticsProperty('addressStep', addressStep))
      ..add(DiagnosticsProperty('userStep', userStep));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StepsState &&
            (identical(other.companyStep, companyStep) ||
                other.companyStep == companyStep) &&
            (identical(other.addressStep, addressStep) ||
                other.addressStep == addressStep) &&
            (identical(other.userStep, userStep) ||
                other.userStep == userStep));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, companyStep, addressStep, userStep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StepsStateCopyWith<_$_StepsState> get copyWith =>
      __$$_StepsStateCopyWithImpl<_$_StepsState>(this, _$identity);
}

abstract class _StepsState extends StepsState {
  const factory _StepsState(
      {required final StepModel companyStep,
      required final StepModel addressStep,
      required final StepModel userStep}) = _$_StepsState;
  const _StepsState._() : super._();

  @override
  StepModel get companyStep;
  @override
  StepModel get addressStep;
  @override
  StepModel get userStep;
  @override
  @JsonKey(ignore: true)
  _$$_StepsStateCopyWith<_$_StepsState> get copyWith =>
      throw _privateConstructorUsedError;
}
