// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MaterialCategoryModel {
  int? get id => throw _privateConstructorUsedError;
  String get companyCode => throw _privateConstructorUsedError;
  String get categoryCode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MaterialCategoryModelCopyWith<MaterialCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialCategoryModelCopyWith<$Res> {
  factory $MaterialCategoryModelCopyWith(MaterialCategoryModel value,
          $Res Function(MaterialCategoryModel) then) =
      _$MaterialCategoryModelCopyWithImpl<$Res, MaterialCategoryModel>;
  @useResult
  $Res call({int? id, String companyCode, String categoryCode, String name});
}

/// @nodoc
class _$MaterialCategoryModelCopyWithImpl<$Res,
        $Val extends MaterialCategoryModel>
    implements $MaterialCategoryModelCopyWith<$Res> {
  _$MaterialCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? companyCode = null,
    Object? categoryCode = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      companyCode: null == companyCode
          ? _value.companyCode
          : companyCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryCode: null == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MaterialCategoryModelCopyWith<$Res>
    implements $MaterialCategoryModelCopyWith<$Res> {
  factory _$$_MaterialCategoryModelCopyWith(_$_MaterialCategoryModel value,
          $Res Function(_$_MaterialCategoryModel) then) =
      __$$_MaterialCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String companyCode, String categoryCode, String name});
}

/// @nodoc
class __$$_MaterialCategoryModelCopyWithImpl<$Res>
    extends _$MaterialCategoryModelCopyWithImpl<$Res, _$_MaterialCategoryModel>
    implements _$$_MaterialCategoryModelCopyWith<$Res> {
  __$$_MaterialCategoryModelCopyWithImpl(_$_MaterialCategoryModel _value,
      $Res Function(_$_MaterialCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? companyCode = null,
    Object? categoryCode = null,
    Object? name = null,
  }) {
    return _then(_$_MaterialCategoryModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      companyCode: null == companyCode
          ? _value.companyCode
          : companyCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryCode: null == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MaterialCategoryModel extends _MaterialCategoryModel
    with DiagnosticableTreeMixin {
  const _$_MaterialCategoryModel(
      {required this.id,
      required this.companyCode,
      required this.categoryCode,
      required this.name})
      : super._();

  @override
  final int? id;
  @override
  final String companyCode;
  @override
  final String categoryCode;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MaterialCategoryModel(id: $id, companyCode: $companyCode, categoryCode: $categoryCode, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MaterialCategoryModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('companyCode', companyCode))
      ..add(DiagnosticsProperty('categoryCode', categoryCode))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MaterialCategoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyCode, companyCode) ||
                other.companyCode == companyCode) &&
            (identical(other.categoryCode, categoryCode) ||
                other.categoryCode == categoryCode) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, companyCode, categoryCode, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MaterialCategoryModelCopyWith<_$_MaterialCategoryModel> get copyWith =>
      __$$_MaterialCategoryModelCopyWithImpl<_$_MaterialCategoryModel>(
          this, _$identity);
}

abstract class _MaterialCategoryModel extends MaterialCategoryModel {
  const factory _MaterialCategoryModel(
      {required final int? id,
      required final String companyCode,
      required final String categoryCode,
      required final String name}) = _$_MaterialCategoryModel;
  const _MaterialCategoryModel._() : super._();

  @override
  int? get id;
  @override
  String get companyCode;
  @override
  String get categoryCode;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_MaterialCategoryModelCopyWith<_$_MaterialCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
