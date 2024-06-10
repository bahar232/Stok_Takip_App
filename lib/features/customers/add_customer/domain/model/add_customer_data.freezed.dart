// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_customer_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddCustomerData {
  String get code => throw _privateConstructorUsedError;
  String get related => throw _privateConstructorUsedError;
  String get authorizedName => throw _privateConstructorUsedError;
  String get authorizedSurname => throw _privateConstructorUsedError;
  City? get selectedCity => throw _privateConstructorUsedError;
  Country? get selectedCountry => throw _privateConstructorUsedError;
  District? get selectedDistrict => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get taxOffice => throw _privateConstructorUsedError;
  String get tckNo => throw _privateConstructorUsedError;
  String get taxNo => throw _privateConstructorUsedError;
  CurrencyTypeModel? get selectedCurrency => throw _privateConstructorUsedError;
  AccountTypeEnum get selectedAccountType => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCustomerDataCopyWith<AddCustomerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCustomerDataCopyWith<$Res> {
  factory $AddCustomerDataCopyWith(
          AddCustomerData value, $Res Function(AddCustomerData) then) =
      _$AddCustomerDataCopyWithImpl<$Res, AddCustomerData>;
  @useResult
  $Res call(
      {String code,
      String related,
      String authorizedName,
      String authorizedSurname,
      City? selectedCity,
      Country? selectedCountry,
      District? selectedDistrict,
      String address,
      String taxOffice,
      String tckNo,
      String taxNo,
      CurrencyTypeModel? selectedCurrency,
      AccountTypeEnum selectedAccountType,
      int? id,
      String name});

  $CurrencyTypeModelCopyWith<$Res>? get selectedCurrency;
}

/// @nodoc
class _$AddCustomerDataCopyWithImpl<$Res, $Val extends AddCustomerData>
    implements $AddCustomerDataCopyWith<$Res> {
  _$AddCustomerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? related = null,
    Object? authorizedName = null,
    Object? authorizedSurname = null,
    Object? selectedCity = freezed,
    Object? selectedCountry = freezed,
    Object? selectedDistrict = freezed,
    Object? address = null,
    Object? taxOffice = null,
    Object? tckNo = null,
    Object? taxNo = null,
    Object? selectedCurrency = freezed,
    Object? selectedAccountType = null,
    Object? id = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      related: null == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as String,
      authorizedName: null == authorizedName
          ? _value.authorizedName
          : authorizedName // ignore: cast_nullable_to_non_nullable
              as String,
      authorizedSurname: null == authorizedSurname
          ? _value.authorizedSurname
          : authorizedSurname // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCity: freezed == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as City?,
      selectedCountry: freezed == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as Country?,
      selectedDistrict: freezed == selectedDistrict
          ? _value.selectedDistrict
          : selectedDistrict // ignore: cast_nullable_to_non_nullable
              as District?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      taxOffice: null == taxOffice
          ? _value.taxOffice
          : taxOffice // ignore: cast_nullable_to_non_nullable
              as String,
      tckNo: null == tckNo
          ? _value.tckNo
          : tckNo // ignore: cast_nullable_to_non_nullable
              as String,
      taxNo: null == taxNo
          ? _value.taxNo
          : taxNo // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCurrency: freezed == selectedCurrency
          ? _value.selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyTypeModel?,
      selectedAccountType: null == selectedAccountType
          ? _value.selectedAccountType
          : selectedAccountType // ignore: cast_nullable_to_non_nullable
              as AccountTypeEnum,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencyTypeModelCopyWith<$Res>? get selectedCurrency {
    if (_value.selectedCurrency == null) {
      return null;
    }

    return $CurrencyTypeModelCopyWith<$Res>(_value.selectedCurrency!, (value) {
      return _then(_value.copyWith(selectedCurrency: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddCustomerDataCopyWith<$Res>
    implements $AddCustomerDataCopyWith<$Res> {
  factory _$$_AddCustomerDataCopyWith(
          _$_AddCustomerData value, $Res Function(_$_AddCustomerData) then) =
      __$$_AddCustomerDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      String related,
      String authorizedName,
      String authorizedSurname,
      City? selectedCity,
      Country? selectedCountry,
      District? selectedDistrict,
      String address,
      String taxOffice,
      String tckNo,
      String taxNo,
      CurrencyTypeModel? selectedCurrency,
      AccountTypeEnum selectedAccountType,
      int? id,
      String name});

  @override
  $CurrencyTypeModelCopyWith<$Res>? get selectedCurrency;
}

/// @nodoc
class __$$_AddCustomerDataCopyWithImpl<$Res>
    extends _$AddCustomerDataCopyWithImpl<$Res, _$_AddCustomerData>
    implements _$$_AddCustomerDataCopyWith<$Res> {
  __$$_AddCustomerDataCopyWithImpl(
      _$_AddCustomerData _value, $Res Function(_$_AddCustomerData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? related = null,
    Object? authorizedName = null,
    Object? authorizedSurname = null,
    Object? selectedCity = freezed,
    Object? selectedCountry = freezed,
    Object? selectedDistrict = freezed,
    Object? address = null,
    Object? taxOffice = null,
    Object? tckNo = null,
    Object? taxNo = null,
    Object? selectedCurrency = freezed,
    Object? selectedAccountType = null,
    Object? id = freezed,
    Object? name = null,
  }) {
    return _then(_$_AddCustomerData(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      related: null == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as String,
      authorizedName: null == authorizedName
          ? _value.authorizedName
          : authorizedName // ignore: cast_nullable_to_non_nullable
              as String,
      authorizedSurname: null == authorizedSurname
          ? _value.authorizedSurname
          : authorizedSurname // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCity: freezed == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as City?,
      selectedCountry: freezed == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as Country?,
      selectedDistrict: freezed == selectedDistrict
          ? _value.selectedDistrict
          : selectedDistrict // ignore: cast_nullable_to_non_nullable
              as District?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      taxOffice: null == taxOffice
          ? _value.taxOffice
          : taxOffice // ignore: cast_nullable_to_non_nullable
              as String,
      tckNo: null == tckNo
          ? _value.tckNo
          : tckNo // ignore: cast_nullable_to_non_nullable
              as String,
      taxNo: null == taxNo
          ? _value.taxNo
          : taxNo // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCurrency: freezed == selectedCurrency
          ? _value.selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyTypeModel?,
      selectedAccountType: null == selectedAccountType
          ? _value.selectedAccountType
          : selectedAccountType // ignore: cast_nullable_to_non_nullable
              as AccountTypeEnum,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddCustomerData
    with DiagnosticableTreeMixin
    implements _AddCustomerData {
  const _$_AddCustomerData(
      {required this.code,
      required this.related,
      required this.authorizedName,
      required this.authorizedSurname,
      required this.selectedCity,
      required this.selectedCountry,
      required this.selectedDistrict,
      required this.address,
      required this.taxOffice,
      required this.tckNo,
      required this.taxNo,
      required this.selectedCurrency,
      required this.selectedAccountType,
      required this.id,
      required this.name});

  @override
  final String code;
  @override
  final String related;
  @override
  final String authorizedName;
  @override
  final String authorizedSurname;
  @override
  final City? selectedCity;
  @override
  final Country? selectedCountry;
  @override
  final District? selectedDistrict;
  @override
  final String address;
  @override
  final String taxOffice;
  @override
  final String tckNo;
  @override
  final String taxNo;
  @override
  final CurrencyTypeModel? selectedCurrency;
  @override
  final AccountTypeEnum selectedAccountType;
  @override
  final int? id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddCustomerData(code: $code, related: $related, authorizedName: $authorizedName, authorizedSurname: $authorizedSurname, selectedCity: $selectedCity, selectedCountry: $selectedCountry, selectedDistrict: $selectedDistrict, address: $address, taxOffice: $taxOffice, tckNo: $tckNo, taxNo: $taxNo, selectedCurrency: $selectedCurrency, selectedAccountType: $selectedAccountType, id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddCustomerData'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('related', related))
      ..add(DiagnosticsProperty('authorizedName', authorizedName))
      ..add(DiagnosticsProperty('authorizedSurname', authorizedSurname))
      ..add(DiagnosticsProperty('selectedCity', selectedCity))
      ..add(DiagnosticsProperty('selectedCountry', selectedCountry))
      ..add(DiagnosticsProperty('selectedDistrict', selectedDistrict))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('taxOffice', taxOffice))
      ..add(DiagnosticsProperty('tckNo', tckNo))
      ..add(DiagnosticsProperty('taxNo', taxNo))
      ..add(DiagnosticsProperty('selectedCurrency', selectedCurrency))
      ..add(DiagnosticsProperty('selectedAccountType', selectedAccountType))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCustomerData &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.related, related) || other.related == related) &&
            (identical(other.authorizedName, authorizedName) ||
                other.authorizedName == authorizedName) &&
            (identical(other.authorizedSurname, authorizedSurname) ||
                other.authorizedSurname == authorizedSurname) &&
            (identical(other.selectedCity, selectedCity) ||
                other.selectedCity == selectedCity) &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry) &&
            (identical(other.selectedDistrict, selectedDistrict) ||
                other.selectedDistrict == selectedDistrict) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.taxOffice, taxOffice) ||
                other.taxOffice == taxOffice) &&
            (identical(other.tckNo, tckNo) || other.tckNo == tckNo) &&
            (identical(other.taxNo, taxNo) || other.taxNo == taxNo) &&
            (identical(other.selectedCurrency, selectedCurrency) ||
                other.selectedCurrency == selectedCurrency) &&
            (identical(other.selectedAccountType, selectedAccountType) ||
                other.selectedAccountType == selectedAccountType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      related,
      authorizedName,
      authorizedSurname,
      selectedCity,
      selectedCountry,
      selectedDistrict,
      address,
      taxOffice,
      tckNo,
      taxNo,
      selectedCurrency,
      selectedAccountType,
      id,
      name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCustomerDataCopyWith<_$_AddCustomerData> get copyWith =>
      __$$_AddCustomerDataCopyWithImpl<_$_AddCustomerData>(this, _$identity);
}

abstract class _AddCustomerData implements AddCustomerData {
  const factory _AddCustomerData(
      {required final String code,
      required final String related,
      required final String authorizedName,
      required final String authorizedSurname,
      required final City? selectedCity,
      required final Country? selectedCountry,
      required final District? selectedDistrict,
      required final String address,
      required final String taxOffice,
      required final String tckNo,
      required final String taxNo,
      required final CurrencyTypeModel? selectedCurrency,
      required final AccountTypeEnum selectedAccountType,
      required final int? id,
      required final String name}) = _$_AddCustomerData;

  @override
  String get code;
  @override
  String get related;
  @override
  String get authorizedName;
  @override
  String get authorizedSurname;
  @override
  City? get selectedCity;
  @override
  Country? get selectedCountry;
  @override
  District? get selectedDistrict;
  @override
  String get address;
  @override
  String get taxOffice;
  @override
  String get tckNo;
  @override
  String get taxNo;
  @override
  CurrencyTypeModel? get selectedCurrency;
  @override
  AccountTypeEnum get selectedAccountType;
  @override
  int? get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_AddCustomerDataCopyWith<_$_AddCustomerData> get copyWith =>
      throw _privateConstructorUsedError;
}
