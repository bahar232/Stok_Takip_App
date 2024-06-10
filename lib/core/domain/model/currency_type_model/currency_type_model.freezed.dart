// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyTypeModel _$CurrencyTypeModelFromJson(Map<String, dynamic> json) {
  return _CurrencyTypeModel.fromJson(json);
}

/// @nodoc
mixin _$CurrencyTypeModel {
  int get id => throw _privateConstructorUsedError;
  int get currencyType => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get shortCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyTypeModelCopyWith<CurrencyTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyTypeModelCopyWith<$Res> {
  factory $CurrencyTypeModelCopyWith(
          CurrencyTypeModel value, $Res Function(CurrencyTypeModel) then) =
      _$CurrencyTypeModelCopyWithImpl<$Res, CurrencyTypeModel>;
  @useResult
  $Res call({int id, int currencyType, String description, String shortCode});
}

/// @nodoc
class _$CurrencyTypeModelCopyWithImpl<$Res, $Val extends CurrencyTypeModel>
    implements $CurrencyTypeModelCopyWith<$Res> {
  _$CurrencyTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currencyType = null,
    Object? description = null,
    Object? shortCode = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      shortCode: null == shortCode
          ? _value.shortCode
          : shortCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrencyTypeModelCopyWith<$Res>
    implements $CurrencyTypeModelCopyWith<$Res> {
  factory _$$_CurrencyTypeModelCopyWith(_$_CurrencyTypeModel value,
          $Res Function(_$_CurrencyTypeModel) then) =
      __$$_CurrencyTypeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int currencyType, String description, String shortCode});
}

/// @nodoc
class __$$_CurrencyTypeModelCopyWithImpl<$Res>
    extends _$CurrencyTypeModelCopyWithImpl<$Res, _$_CurrencyTypeModel>
    implements _$$_CurrencyTypeModelCopyWith<$Res> {
  __$$_CurrencyTypeModelCopyWithImpl(
      _$_CurrencyTypeModel _value, $Res Function(_$_CurrencyTypeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currencyType = null,
    Object? description = null,
    Object? shortCode = null,
  }) {
    return _then(_$_CurrencyTypeModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      shortCode: null == shortCode
          ? _value.shortCode
          : shortCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyTypeModel extends _CurrencyTypeModel
    with DiagnosticableTreeMixin {
  const _$_CurrencyTypeModel(
      {required this.id,
      required this.currencyType,
      required this.description,
      required this.shortCode})
      : super._();

  factory _$_CurrencyTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyTypeModelFromJson(json);

  @override
  final int id;
  @override
  final int currencyType;
  @override
  final String description;
  @override
  final String shortCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrencyTypeModel(id: $id, currencyType: $currencyType, description: $description, shortCode: $shortCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrencyTypeModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('currencyType', currencyType))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('shortCode', shortCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyTypeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.shortCode, shortCode) ||
                other.shortCode == shortCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, currencyType, description, shortCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyTypeModelCopyWith<_$_CurrencyTypeModel> get copyWith =>
      __$$_CurrencyTypeModelCopyWithImpl<_$_CurrencyTypeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyTypeModelToJson(
      this,
    );
  }
}

abstract class _CurrencyTypeModel extends CurrencyTypeModel {
  const factory _CurrencyTypeModel(
      {required final int id,
      required final int currencyType,
      required final String description,
      required final String shortCode}) = _$_CurrencyTypeModel;
  const _CurrencyTypeModel._() : super._();

  factory _CurrencyTypeModel.fromJson(Map<String, dynamic> json) =
      _$_CurrencyTypeModel.fromJson;

  @override
  int get id;
  @override
  int get currencyType;
  @override
  String get description;
  @override
  String get shortCode;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyTypeModelCopyWith<_$_CurrencyTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
