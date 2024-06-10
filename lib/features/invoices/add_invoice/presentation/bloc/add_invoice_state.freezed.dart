// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_invoice_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddInvoiceState {
  List<MaterialModel> get materials => throw _privateConstructorUsedError;
  List<MaterialQuantity> get addedMaterials =>
      throw _privateConstructorUsedError;
  List<Customer> get customers => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get navigateToBack => throw _privateConstructorUsedError;
  List<SalesPerson> get salesPersons => throw _privateConstructorUsedError;
  SalesPerson? get selectedSalesPerson => throw _privateConstructorUsedError;
  Customer? get selectedCustomer => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddInvoiceStateCopyWith<AddInvoiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddInvoiceStateCopyWith<$Res> {
  factory $AddInvoiceStateCopyWith(
          AddInvoiceState value, $Res Function(AddInvoiceState) then) =
      _$AddInvoiceStateCopyWithImpl<$Res, AddInvoiceState>;
  @useResult
  $Res call(
      {List<MaterialModel> materials,
      List<MaterialQuantity> addedMaterials,
      List<Customer> customers,
      bool isLoading,
      bool navigateToBack,
      List<SalesPerson> salesPersons,
      SalesPerson? selectedSalesPerson,
      Customer? selectedCustomer,
      String? message});

  $SalesPersonCopyWith<$Res>? get selectedSalesPerson;
  $CustomerCopyWith<$Res>? get selectedCustomer;
}

/// @nodoc
class _$AddInvoiceStateCopyWithImpl<$Res, $Val extends AddInvoiceState>
    implements $AddInvoiceStateCopyWith<$Res> {
  _$AddInvoiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materials = null,
    Object? addedMaterials = null,
    Object? customers = null,
    Object? isLoading = null,
    Object? navigateToBack = null,
    Object? salesPersons = null,
    Object? selectedSalesPerson = freezed,
    Object? selectedCustomer = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      materials: null == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<MaterialModel>,
      addedMaterials: null == addedMaterials
          ? _value.addedMaterials
          : addedMaterials // ignore: cast_nullable_to_non_nullable
              as List<MaterialQuantity>,
      customers: null == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateToBack: null == navigateToBack
          ? _value.navigateToBack
          : navigateToBack // ignore: cast_nullable_to_non_nullable
              as bool,
      salesPersons: null == salesPersons
          ? _value.salesPersons
          : salesPersons // ignore: cast_nullable_to_non_nullable
              as List<SalesPerson>,
      selectedSalesPerson: freezed == selectedSalesPerson
          ? _value.selectedSalesPerson
          : selectedSalesPerson // ignore: cast_nullable_to_non_nullable
              as SalesPerson?,
      selectedCustomer: freezed == selectedCustomer
          ? _value.selectedCustomer
          : selectedCustomer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SalesPersonCopyWith<$Res>? get selectedSalesPerson {
    if (_value.selectedSalesPerson == null) {
      return null;
    }

    return $SalesPersonCopyWith<$Res>(_value.selectedSalesPerson!, (value) {
      return _then(_value.copyWith(selectedSalesPerson: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res>? get selectedCustomer {
    if (_value.selectedCustomer == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_value.selectedCustomer!, (value) {
      return _then(_value.copyWith(selectedCustomer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddInvoiceStateCopyWith<$Res>
    implements $AddInvoiceStateCopyWith<$Res> {
  factory _$$_AddInvoiceStateCopyWith(
          _$_AddInvoiceState value, $Res Function(_$_AddInvoiceState) then) =
      __$$_AddInvoiceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MaterialModel> materials,
      List<MaterialQuantity> addedMaterials,
      List<Customer> customers,
      bool isLoading,
      bool navigateToBack,
      List<SalesPerson> salesPersons,
      SalesPerson? selectedSalesPerson,
      Customer? selectedCustomer,
      String? message});

  @override
  $SalesPersonCopyWith<$Res>? get selectedSalesPerson;
  @override
  $CustomerCopyWith<$Res>? get selectedCustomer;
}

/// @nodoc
class __$$_AddInvoiceStateCopyWithImpl<$Res>
    extends _$AddInvoiceStateCopyWithImpl<$Res, _$_AddInvoiceState>
    implements _$$_AddInvoiceStateCopyWith<$Res> {
  __$$_AddInvoiceStateCopyWithImpl(
      _$_AddInvoiceState _value, $Res Function(_$_AddInvoiceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materials = null,
    Object? addedMaterials = null,
    Object? customers = null,
    Object? isLoading = null,
    Object? navigateToBack = null,
    Object? salesPersons = null,
    Object? selectedSalesPerson = freezed,
    Object? selectedCustomer = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_AddInvoiceState(
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<MaterialModel>,
      addedMaterials: null == addedMaterials
          ? _value._addedMaterials
          : addedMaterials // ignore: cast_nullable_to_non_nullable
              as List<MaterialQuantity>,
      customers: null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateToBack: null == navigateToBack
          ? _value.navigateToBack
          : navigateToBack // ignore: cast_nullable_to_non_nullable
              as bool,
      salesPersons: null == salesPersons
          ? _value._salesPersons
          : salesPersons // ignore: cast_nullable_to_non_nullable
              as List<SalesPerson>,
      selectedSalesPerson: freezed == selectedSalesPerson
          ? _value.selectedSalesPerson
          : selectedSalesPerson // ignore: cast_nullable_to_non_nullable
              as SalesPerson?,
      selectedCustomer: freezed == selectedCustomer
          ? _value.selectedCustomer
          : selectedCustomer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AddInvoiceState extends _AddInvoiceState {
  const _$_AddInvoiceState(
      {required final List<MaterialModel> materials,
      required final List<MaterialQuantity> addedMaterials,
      required final List<Customer> customers,
      required this.isLoading,
      required this.navigateToBack,
      required final List<SalesPerson> salesPersons,
      this.selectedSalesPerson,
      this.selectedCustomer,
      this.message})
      : _materials = materials,
        _addedMaterials = addedMaterials,
        _customers = customers,
        _salesPersons = salesPersons,
        super._();

  final List<MaterialModel> _materials;
  @override
  List<MaterialModel> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  final List<MaterialQuantity> _addedMaterials;
  @override
  List<MaterialQuantity> get addedMaterials {
    if (_addedMaterials is EqualUnmodifiableListView) return _addedMaterials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addedMaterials);
  }

  final List<Customer> _customers;
  @override
  List<Customer> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  @override
  final bool isLoading;
  @override
  final bool navigateToBack;
  final List<SalesPerson> _salesPersons;
  @override
  List<SalesPerson> get salesPersons {
    if (_salesPersons is EqualUnmodifiableListView) return _salesPersons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_salesPersons);
  }

  @override
  final SalesPerson? selectedSalesPerson;
  @override
  final Customer? selectedCustomer;
  @override
  final String? message;

  @override
  String toString() {
    return 'AddInvoiceState(materials: $materials, addedMaterials: $addedMaterials, customers: $customers, isLoading: $isLoading, navigateToBack: $navigateToBack, salesPersons: $salesPersons, selectedSalesPerson: $selectedSalesPerson, selectedCustomer: $selectedCustomer, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddInvoiceState &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            const DeepCollectionEquality()
                .equals(other._addedMaterials, _addedMaterials) &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.navigateToBack, navigateToBack) ||
                other.navigateToBack == navigateToBack) &&
            const DeepCollectionEquality()
                .equals(other._salesPersons, _salesPersons) &&
            (identical(other.selectedSalesPerson, selectedSalesPerson) ||
                other.selectedSalesPerson == selectedSalesPerson) &&
            (identical(other.selectedCustomer, selectedCustomer) ||
                other.selectedCustomer == selectedCustomer) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_materials),
      const DeepCollectionEquality().hash(_addedMaterials),
      const DeepCollectionEquality().hash(_customers),
      isLoading,
      navigateToBack,
      const DeepCollectionEquality().hash(_salesPersons),
      selectedSalesPerson,
      selectedCustomer,
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddInvoiceStateCopyWith<_$_AddInvoiceState> get copyWith =>
      __$$_AddInvoiceStateCopyWithImpl<_$_AddInvoiceState>(this, _$identity);
}

abstract class _AddInvoiceState extends AddInvoiceState {
  const factory _AddInvoiceState(
      {required final List<MaterialModel> materials,
      required final List<MaterialQuantity> addedMaterials,
      required final List<Customer> customers,
      required final bool isLoading,
      required final bool navigateToBack,
      required final List<SalesPerson> salesPersons,
      final SalesPerson? selectedSalesPerson,
      final Customer? selectedCustomer,
      final String? message}) = _$_AddInvoiceState;
  const _AddInvoiceState._() : super._();

  @override
  List<MaterialModel> get materials;
  @override
  List<MaterialQuantity> get addedMaterials;
  @override
  List<Customer> get customers;
  @override
  bool get isLoading;
  @override
  bool get navigateToBack;
  @override
  List<SalesPerson> get salesPersons;
  @override
  SalesPerson? get selectedSalesPerson;
  @override
  Customer? get selectedCustomer;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_AddInvoiceStateCopyWith<_$_AddInvoiceState> get copyWith =>
      throw _privateConstructorUsedError;
}
