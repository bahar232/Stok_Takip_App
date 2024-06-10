// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_save_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InvoiceSaveModel {
  DateTime get date => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get customerId => throw _privateConstructorUsedError;
  int get salesPersonId => throw _privateConstructorUsedError;
  List<BasicInvoiceItemModel> get invoiceItems =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoiceSaveModelCopyWith<InvoiceSaveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceSaveModelCopyWith<$Res> {
  factory $InvoiceSaveModelCopyWith(
          InvoiceSaveModel value, $Res Function(InvoiceSaveModel) then) =
      _$InvoiceSaveModelCopyWithImpl<$Res, InvoiceSaveModel>;
  @useResult
  $Res call(
      {DateTime date,
      String description,
      int customerId,
      int salesPersonId,
      List<BasicInvoiceItemModel> invoiceItems});
}

/// @nodoc
class _$InvoiceSaveModelCopyWithImpl<$Res, $Val extends InvoiceSaveModel>
    implements $InvoiceSaveModelCopyWith<$Res> {
  _$InvoiceSaveModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? description = null,
    Object? customerId = null,
    Object? salesPersonId = null,
    Object? invoiceItems = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      salesPersonId: null == salesPersonId
          ? _value.salesPersonId
          : salesPersonId // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceItems: null == invoiceItems
          ? _value.invoiceItems
          : invoiceItems // ignore: cast_nullable_to_non_nullable
              as List<BasicInvoiceItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvoiceSaveModelCopyWith<$Res>
    implements $InvoiceSaveModelCopyWith<$Res> {
  factory _$$_InvoiceSaveModelCopyWith(
          _$_InvoiceSaveModel value, $Res Function(_$_InvoiceSaveModel) then) =
      __$$_InvoiceSaveModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      String description,
      int customerId,
      int salesPersonId,
      List<BasicInvoiceItemModel> invoiceItems});
}

/// @nodoc
class __$$_InvoiceSaveModelCopyWithImpl<$Res>
    extends _$InvoiceSaveModelCopyWithImpl<$Res, _$_InvoiceSaveModel>
    implements _$$_InvoiceSaveModelCopyWith<$Res> {
  __$$_InvoiceSaveModelCopyWithImpl(
      _$_InvoiceSaveModel _value, $Res Function(_$_InvoiceSaveModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? description = null,
    Object? customerId = null,
    Object? salesPersonId = null,
    Object? invoiceItems = null,
  }) {
    return _then(_$_InvoiceSaveModel(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      salesPersonId: null == salesPersonId
          ? _value.salesPersonId
          : salesPersonId // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceItems: null == invoiceItems
          ? _value._invoiceItems
          : invoiceItems // ignore: cast_nullable_to_non_nullable
              as List<BasicInvoiceItemModel>,
    ));
  }
}

/// @nodoc

class _$_InvoiceSaveModel
    with DiagnosticableTreeMixin
    implements _InvoiceSaveModel {
  const _$_InvoiceSaveModel(
      {required this.date,
      required this.description,
      required this.customerId,
      required this.salesPersonId,
      required final List<BasicInvoiceItemModel> invoiceItems})
      : _invoiceItems = invoiceItems;

  @override
  final DateTime date;
  @override
  final String description;
  @override
  final int customerId;
  @override
  final int salesPersonId;
  final List<BasicInvoiceItemModel> _invoiceItems;
  @override
  List<BasicInvoiceItemModel> get invoiceItems {
    if (_invoiceItems is EqualUnmodifiableListView) return _invoiceItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invoiceItems);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvoiceSaveModel(date: $date, description: $description, customerId: $customerId, salesPersonId: $salesPersonId, invoiceItems: $invoiceItems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InvoiceSaveModel'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('customerId', customerId))
      ..add(DiagnosticsProperty('salesPersonId', salesPersonId))
      ..add(DiagnosticsProperty('invoiceItems', invoiceItems));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceSaveModel &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.salesPersonId, salesPersonId) ||
                other.salesPersonId == salesPersonId) &&
            const DeepCollectionEquality()
                .equals(other._invoiceItems, _invoiceItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, description, customerId,
      salesPersonId, const DeepCollectionEquality().hash(_invoiceItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceSaveModelCopyWith<_$_InvoiceSaveModel> get copyWith =>
      __$$_InvoiceSaveModelCopyWithImpl<_$_InvoiceSaveModel>(this, _$identity);
}

abstract class _InvoiceSaveModel implements InvoiceSaveModel {
  const factory _InvoiceSaveModel(
          {required final DateTime date,
          required final String description,
          required final int customerId,
          required final int salesPersonId,
          required final List<BasicInvoiceItemModel> invoiceItems}) =
      _$_InvoiceSaveModel;

  @override
  DateTime get date;
  @override
  String get description;
  @override
  int get customerId;
  @override
  int get salesPersonId;
  @override
  List<BasicInvoiceItemModel> get invoiceItems;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceSaveModelCopyWith<_$_InvoiceSaveModel> get copyWith =>
      throw _privateConstructorUsedError;
}
