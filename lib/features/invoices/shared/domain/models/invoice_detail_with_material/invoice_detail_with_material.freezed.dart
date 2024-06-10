// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_detail_with_material.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InvoiceDetailWithMaterial {
  MaterialModel get material => throw _privateConstructorUsedError;
  InvoiceDetail get invoiceDetail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoiceDetailWithMaterialCopyWith<InvoiceDetailWithMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDetailWithMaterialCopyWith<$Res> {
  factory $InvoiceDetailWithMaterialCopyWith(InvoiceDetailWithMaterial value,
          $Res Function(InvoiceDetailWithMaterial) then) =
      _$InvoiceDetailWithMaterialCopyWithImpl<$Res, InvoiceDetailWithMaterial>;
  @useResult
  $Res call({MaterialModel material, InvoiceDetail invoiceDetail});

  $MaterialModelCopyWith<$Res> get material;
  $InvoiceDetailCopyWith<$Res> get invoiceDetail;
}

/// @nodoc
class _$InvoiceDetailWithMaterialCopyWithImpl<$Res,
        $Val extends InvoiceDetailWithMaterial>
    implements $InvoiceDetailWithMaterialCopyWith<$Res> {
  _$InvoiceDetailWithMaterialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? material = null,
    Object? invoiceDetail = null,
  }) {
    return _then(_value.copyWith(
      material: null == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as MaterialModel,
      invoiceDetail: null == invoiceDetail
          ? _value.invoiceDetail
          : invoiceDetail // ignore: cast_nullable_to_non_nullable
              as InvoiceDetail,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MaterialModelCopyWith<$Res> get material {
    return $MaterialModelCopyWith<$Res>(_value.material, (value) {
      return _then(_value.copyWith(material: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceDetailCopyWith<$Res> get invoiceDetail {
    return $InvoiceDetailCopyWith<$Res>(_value.invoiceDetail, (value) {
      return _then(_value.copyWith(invoiceDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InvoiceDetailWithMaterialCopyWith<$Res>
    implements $InvoiceDetailWithMaterialCopyWith<$Res> {
  factory _$$_InvoiceDetailWithMaterialCopyWith(
          _$_InvoiceDetailWithMaterial value,
          $Res Function(_$_InvoiceDetailWithMaterial) then) =
      __$$_InvoiceDetailWithMaterialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MaterialModel material, InvoiceDetail invoiceDetail});

  @override
  $MaterialModelCopyWith<$Res> get material;
  @override
  $InvoiceDetailCopyWith<$Res> get invoiceDetail;
}

/// @nodoc
class __$$_InvoiceDetailWithMaterialCopyWithImpl<$Res>
    extends _$InvoiceDetailWithMaterialCopyWithImpl<$Res,
        _$_InvoiceDetailWithMaterial>
    implements _$$_InvoiceDetailWithMaterialCopyWith<$Res> {
  __$$_InvoiceDetailWithMaterialCopyWithImpl(
      _$_InvoiceDetailWithMaterial _value,
      $Res Function(_$_InvoiceDetailWithMaterial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? material = null,
    Object? invoiceDetail = null,
  }) {
    return _then(_$_InvoiceDetailWithMaterial(
      material: null == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as MaterialModel,
      invoiceDetail: null == invoiceDetail
          ? _value.invoiceDetail
          : invoiceDetail // ignore: cast_nullable_to_non_nullable
              as InvoiceDetail,
    ));
  }
}

/// @nodoc

class _$_InvoiceDetailWithMaterial
    with DiagnosticableTreeMixin
    implements _InvoiceDetailWithMaterial {
  const _$_InvoiceDetailWithMaterial(
      {required this.material, required this.invoiceDetail});

  @override
  final MaterialModel material;
  @override
  final InvoiceDetail invoiceDetail;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvoiceDetailWithMaterial(material: $material, invoiceDetail: $invoiceDetail)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InvoiceDetailWithMaterial'))
      ..add(DiagnosticsProperty('material', material))
      ..add(DiagnosticsProperty('invoiceDetail', invoiceDetail));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceDetailWithMaterial &&
            (identical(other.material, material) ||
                other.material == material) &&
            (identical(other.invoiceDetail, invoiceDetail) ||
                other.invoiceDetail == invoiceDetail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, material, invoiceDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceDetailWithMaterialCopyWith<_$_InvoiceDetailWithMaterial>
      get copyWith => __$$_InvoiceDetailWithMaterialCopyWithImpl<
          _$_InvoiceDetailWithMaterial>(this, _$identity);
}

abstract class _InvoiceDetailWithMaterial implements InvoiceDetailWithMaterial {
  const factory _InvoiceDetailWithMaterial(
          {required final MaterialModel material,
          required final InvoiceDetail invoiceDetail}) =
      _$_InvoiceDetailWithMaterial;

  @override
  MaterialModel get material;
  @override
  InvoiceDetail get invoiceDetail;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceDetailWithMaterialCopyWith<_$_InvoiceDetailWithMaterial>
      get copyWith => throw _privateConstructorUsedError;
}
