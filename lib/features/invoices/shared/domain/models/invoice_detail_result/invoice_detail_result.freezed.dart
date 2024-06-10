// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_detail_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InvoiceDetailResult {
  Customer get customer => throw _privateConstructorUsedError;
  InvoiceModel get invoiceModel => throw _privateConstructorUsedError;
  List<InvoiceDetailWithMaterial> get invoiceWithMaterials =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoiceDetailResultCopyWith<InvoiceDetailResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDetailResultCopyWith<$Res> {
  factory $InvoiceDetailResultCopyWith(
          InvoiceDetailResult value, $Res Function(InvoiceDetailResult) then) =
      _$InvoiceDetailResultCopyWithImpl<$Res, InvoiceDetailResult>;
  @useResult
  $Res call(
      {Customer customer,
      InvoiceModel invoiceModel,
      List<InvoiceDetailWithMaterial> invoiceWithMaterials});

  $CustomerCopyWith<$Res> get customer;
  $InvoiceModelCopyWith<$Res> get invoiceModel;
}

/// @nodoc
class _$InvoiceDetailResultCopyWithImpl<$Res, $Val extends InvoiceDetailResult>
    implements $InvoiceDetailResultCopyWith<$Res> {
  _$InvoiceDetailResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
    Object? invoiceModel = null,
    Object? invoiceWithMaterials = null,
  }) {
    return _then(_value.copyWith(
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      invoiceModel: null == invoiceModel
          ? _value.invoiceModel
          : invoiceModel // ignore: cast_nullable_to_non_nullable
              as InvoiceModel,
      invoiceWithMaterials: null == invoiceWithMaterials
          ? _value.invoiceWithMaterials
          : invoiceWithMaterials // ignore: cast_nullable_to_non_nullable
              as List<InvoiceDetailWithMaterial>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res> get customer {
    return $CustomerCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceModelCopyWith<$Res> get invoiceModel {
    return $InvoiceModelCopyWith<$Res>(_value.invoiceModel, (value) {
      return _then(_value.copyWith(invoiceModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InvoiceDetailResultCopyWith<$Res>
    implements $InvoiceDetailResultCopyWith<$Res> {
  factory _$$_InvoiceDetailResultCopyWith(_$_InvoiceDetailResult value,
          $Res Function(_$_InvoiceDetailResult) then) =
      __$$_InvoiceDetailResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Customer customer,
      InvoiceModel invoiceModel,
      List<InvoiceDetailWithMaterial> invoiceWithMaterials});

  @override
  $CustomerCopyWith<$Res> get customer;
  @override
  $InvoiceModelCopyWith<$Res> get invoiceModel;
}

/// @nodoc
class __$$_InvoiceDetailResultCopyWithImpl<$Res>
    extends _$InvoiceDetailResultCopyWithImpl<$Res, _$_InvoiceDetailResult>
    implements _$$_InvoiceDetailResultCopyWith<$Res> {
  __$$_InvoiceDetailResultCopyWithImpl(_$_InvoiceDetailResult _value,
      $Res Function(_$_InvoiceDetailResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
    Object? invoiceModel = null,
    Object? invoiceWithMaterials = null,
  }) {
    return _then(_$_InvoiceDetailResult(
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      invoiceModel: null == invoiceModel
          ? _value.invoiceModel
          : invoiceModel // ignore: cast_nullable_to_non_nullable
              as InvoiceModel,
      invoiceWithMaterials: null == invoiceWithMaterials
          ? _value._invoiceWithMaterials
          : invoiceWithMaterials // ignore: cast_nullable_to_non_nullable
              as List<InvoiceDetailWithMaterial>,
    ));
  }
}

/// @nodoc

class _$_InvoiceDetailResult
    with DiagnosticableTreeMixin
    implements _InvoiceDetailResult {
  const _$_InvoiceDetailResult(
      {required this.customer,
      required this.invoiceModel,
      required final List<InvoiceDetailWithMaterial> invoiceWithMaterials})
      : _invoiceWithMaterials = invoiceWithMaterials;

  @override
  final Customer customer;
  @override
  final InvoiceModel invoiceModel;
  final List<InvoiceDetailWithMaterial> _invoiceWithMaterials;
  @override
  List<InvoiceDetailWithMaterial> get invoiceWithMaterials {
    if (_invoiceWithMaterials is EqualUnmodifiableListView)
      return _invoiceWithMaterials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invoiceWithMaterials);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvoiceDetailResult(customer: $customer, invoiceModel: $invoiceModel, invoiceWithMaterials: $invoiceWithMaterials)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InvoiceDetailResult'))
      ..add(DiagnosticsProperty('customer', customer))
      ..add(DiagnosticsProperty('invoiceModel', invoiceModel))
      ..add(DiagnosticsProperty('invoiceWithMaterials', invoiceWithMaterials));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceDetailResult &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.invoiceModel, invoiceModel) ||
                other.invoiceModel == invoiceModel) &&
            const DeepCollectionEquality()
                .equals(other._invoiceWithMaterials, _invoiceWithMaterials));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customer, invoiceModel,
      const DeepCollectionEquality().hash(_invoiceWithMaterials));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceDetailResultCopyWith<_$_InvoiceDetailResult> get copyWith =>
      __$$_InvoiceDetailResultCopyWithImpl<_$_InvoiceDetailResult>(
          this, _$identity);
}

abstract class _InvoiceDetailResult implements InvoiceDetailResult {
  const factory _InvoiceDetailResult(
      {required final Customer customer,
      required final InvoiceModel invoiceModel,
      required final List<InvoiceDetailWithMaterial>
          invoiceWithMaterials}) = _$_InvoiceDetailResult;

  @override
  Customer get customer;
  @override
  InvoiceModel get invoiceModel;
  @override
  List<InvoiceDetailWithMaterial> get invoiceWithMaterials;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceDetailResultCopyWith<_$_InvoiceDetailResult> get copyWith =>
      throw _privateConstructorUsedError;
}
