// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_quantity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MaterialQuantity {
  MaterialModel get material => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MaterialQuantityCopyWith<MaterialQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialQuantityCopyWith<$Res> {
  factory $MaterialQuantityCopyWith(
          MaterialQuantity value, $Res Function(MaterialQuantity) then) =
      _$MaterialQuantityCopyWithImpl<$Res, MaterialQuantity>;
  @useResult
  $Res call({MaterialModel material, int quantity});

  $MaterialModelCopyWith<$Res> get material;
}

/// @nodoc
class _$MaterialQuantityCopyWithImpl<$Res, $Val extends MaterialQuantity>
    implements $MaterialQuantityCopyWith<$Res> {
  _$MaterialQuantityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? material = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      material: null == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as MaterialModel,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MaterialModelCopyWith<$Res> get material {
    return $MaterialModelCopyWith<$Res>(_value.material, (value) {
      return _then(_value.copyWith(material: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MaterialQuantityCopyWith<$Res>
    implements $MaterialQuantityCopyWith<$Res> {
  factory _$$_MaterialQuantityCopyWith(
          _$_MaterialQuantity value, $Res Function(_$_MaterialQuantity) then) =
      __$$_MaterialQuantityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MaterialModel material, int quantity});

  @override
  $MaterialModelCopyWith<$Res> get material;
}

/// @nodoc
class __$$_MaterialQuantityCopyWithImpl<$Res>
    extends _$MaterialQuantityCopyWithImpl<$Res, _$_MaterialQuantity>
    implements _$$_MaterialQuantityCopyWith<$Res> {
  __$$_MaterialQuantityCopyWithImpl(
      _$_MaterialQuantity _value, $Res Function(_$_MaterialQuantity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? material = null,
    Object? quantity = null,
  }) {
    return _then(_$_MaterialQuantity(
      material: null == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as MaterialModel,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MaterialQuantity extends _MaterialQuantity
    with DiagnosticableTreeMixin {
  const _$_MaterialQuantity({required this.material, required this.quantity})
      : super._();

  @override
  final MaterialModel material;
  @override
  final int quantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MaterialQuantity(material: $material, quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MaterialQuantity'))
      ..add(DiagnosticsProperty('material', material))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MaterialQuantity &&
            (identical(other.material, material) ||
                other.material == material) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, material, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MaterialQuantityCopyWith<_$_MaterialQuantity> get copyWith =>
      __$$_MaterialQuantityCopyWithImpl<_$_MaterialQuantity>(this, _$identity);
}

abstract class _MaterialQuantity extends MaterialQuantity {
  const factory _MaterialQuantity(
      {required final MaterialModel material,
      required final int quantity}) = _$_MaterialQuantity;
  const _MaterialQuantity._() : super._();

  @override
  MaterialModel get material;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_MaterialQuantityCopyWith<_$_MaterialQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}
