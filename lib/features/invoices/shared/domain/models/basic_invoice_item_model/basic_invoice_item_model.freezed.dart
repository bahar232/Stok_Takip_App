// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_invoice_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BasicInvoiceItemModel {
  int get materialId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  double get vat => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get brm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasicInvoiceItemModelCopyWith<BasicInvoiceItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicInvoiceItemModelCopyWith<$Res> {
  factory $BasicInvoiceItemModelCopyWith(BasicInvoiceItemModel value,
          $Res Function(BasicInvoiceItemModel) then) =
      _$BasicInvoiceItemModelCopyWithImpl<$Res, BasicInvoiceItemModel>;
  @useResult
  $Res call(
      {int materialId,
      double quantity,
      double vat,
      double price,
      String description,
      String brm});
}

/// @nodoc
class _$BasicInvoiceItemModelCopyWithImpl<$Res,
        $Val extends BasicInvoiceItemModel>
    implements $BasicInvoiceItemModelCopyWith<$Res> {
  _$BasicInvoiceItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materialId = null,
    Object? quantity = null,
    Object? vat = null,
    Object? price = null,
    Object? description = null,
    Object? brm = null,
  }) {
    return _then(_value.copyWith(
      materialId: null == materialId
          ? _value.materialId
          : materialId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      vat: null == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      brm: null == brm
          ? _value.brm
          : brm // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BasicInvoiceItemModelCopyWith<$Res>
    implements $BasicInvoiceItemModelCopyWith<$Res> {
  factory _$$_BasicInvoiceItemModelCopyWith(_$_BasicInvoiceItemModel value,
          $Res Function(_$_BasicInvoiceItemModel) then) =
      __$$_BasicInvoiceItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int materialId,
      double quantity,
      double vat,
      double price,
      String description,
      String brm});
}

/// @nodoc
class __$$_BasicInvoiceItemModelCopyWithImpl<$Res>
    extends _$BasicInvoiceItemModelCopyWithImpl<$Res, _$_BasicInvoiceItemModel>
    implements _$$_BasicInvoiceItemModelCopyWith<$Res> {
  __$$_BasicInvoiceItemModelCopyWithImpl(_$_BasicInvoiceItemModel _value,
      $Res Function(_$_BasicInvoiceItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materialId = null,
    Object? quantity = null,
    Object? vat = null,
    Object? price = null,
    Object? description = null,
    Object? brm = null,
  }) {
    return _then(_$_BasicInvoiceItemModel(
      materialId: null == materialId
          ? _value.materialId
          : materialId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      vat: null == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      brm: null == brm
          ? _value.brm
          : brm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BasicInvoiceItemModel
    with DiagnosticableTreeMixin
    implements _BasicInvoiceItemModel {
  const _$_BasicInvoiceItemModel(
      {required this.materialId,
      required this.quantity,
      required this.vat,
      required this.price,
      required this.description,
      required this.brm});

  @override
  final int materialId;
  @override
  final double quantity;
  @override
  final double vat;
  @override
  final double price;
  @override
  final String description;
  @override
  final String brm;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BasicInvoiceItemModel(materialId: $materialId, quantity: $quantity, vat: $vat, price: $price, description: $description, brm: $brm)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BasicInvoiceItemModel'))
      ..add(DiagnosticsProperty('materialId', materialId))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('vat', vat))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('brm', brm));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasicInvoiceItemModel &&
            (identical(other.materialId, materialId) ||
                other.materialId == materialId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.brm, brm) || other.brm == brm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, materialId, quantity, vat, price, description, brm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasicInvoiceItemModelCopyWith<_$_BasicInvoiceItemModel> get copyWith =>
      __$$_BasicInvoiceItemModelCopyWithImpl<_$_BasicInvoiceItemModel>(
          this, _$identity);
}

abstract class _BasicInvoiceItemModel implements BasicInvoiceItemModel {
  const factory _BasicInvoiceItemModel(
      {required final int materialId,
      required final double quantity,
      required final double vat,
      required final double price,
      required final String description,
      required final String brm}) = _$_BasicInvoiceItemModel;

  @override
  int get materialId;
  @override
  double get quantity;
  @override
  double get vat;
  @override
  double get price;
  @override
  String get description;
  @override
  String get brm;
  @override
  @JsonKey(ignore: true)
  _$$_BasicInvoiceItemModelCopyWith<_$_BasicInvoiceItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
