// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'step_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StepModel {
  String get title => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  bool get isCurrent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StepModelCopyWith<StepModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepModelCopyWith<$Res> {
  factory $StepModelCopyWith(StepModel value, $Res Function(StepModel) then) =
      _$StepModelCopyWithImpl<$Res, StepModel>;
  @useResult
  $Res call({String title, int order, bool isCompleted, bool isCurrent});
}

/// @nodoc
class _$StepModelCopyWithImpl<$Res, $Val extends StepModel>
    implements $StepModelCopyWith<$Res> {
  _$StepModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? order = null,
    Object? isCompleted = null,
    Object? isCurrent = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isCurrent: null == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StepModelCopyWith<$Res> implements $StepModelCopyWith<$Res> {
  factory _$$_StepModelCopyWith(
          _$_StepModel value, $Res Function(_$_StepModel) then) =
      __$$_StepModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int order, bool isCompleted, bool isCurrent});
}

/// @nodoc
class __$$_StepModelCopyWithImpl<$Res>
    extends _$StepModelCopyWithImpl<$Res, _$_StepModel>
    implements _$$_StepModelCopyWith<$Res> {
  __$$_StepModelCopyWithImpl(
      _$_StepModel _value, $Res Function(_$_StepModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? order = null,
    Object? isCompleted = null,
    Object? isCurrent = null,
  }) {
    return _then(_$_StepModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isCurrent: null == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StepModel extends _StepModel {
  const _$_StepModel(
      {required this.title,
      required this.order,
      this.isCompleted = false,
      this.isCurrent = false})
      : super._();

  @override
  final String title;
  @override
  final int order;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  @JsonKey()
  final bool isCurrent;

  @override
  String toString() {
    return 'StepModel(title: $title, order: $order, isCompleted: $isCompleted, isCurrent: $isCurrent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StepModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.isCurrent, isCurrent) ||
                other.isCurrent == isCurrent));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, order, isCompleted, isCurrent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StepModelCopyWith<_$_StepModel> get copyWith =>
      __$$_StepModelCopyWithImpl<_$_StepModel>(this, _$identity);
}

abstract class _StepModel extends StepModel {
  const factory _StepModel(
      {required final String title,
      required final int order,
      final bool isCompleted,
      final bool isCurrent}) = _$_StepModel;
  const _StepModel._() : super._();

  @override
  String get title;
  @override
  int get order;
  @override
  bool get isCompleted;
  @override
  bool get isCurrent;
  @override
  @JsonKey(ignore: true)
  _$$_StepModelCopyWith<_$_StepModel> get copyWith =>
      throw _privateConstructorUsedError;
}
