// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetInfoState {
  List<City> get cities => throw _privateConstructorUsedError;
  List<City> get filteredCities => throw _privateConstructorUsedError;
  bool get isCityEnabled => throw _privateConstructorUsedError;
  List<CurrencyTypeModel> get currencies => throw _privateConstructorUsedError;
  List<District> get districts => throw _privateConstructorUsedError;
  List<District> get filteredDistricts => throw _privateConstructorUsedError;
  bool get isDistrictEnabled => throw _privateConstructorUsedError;
  List<Country> get countries => throw _privateConstructorUsedError;
  List<Country> get filteredCountries => throw _privateConstructorUsedError;
  bool get isCountryEnabled => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  District? get selectedDistrict => throw _privateConstructorUsedError;
  Country? get selectedCountry => throw _privateConstructorUsedError;
  City? get selectedCity => throw _privateConstructorUsedError;
  CurrencyTypeModel? get selectedCurrency => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetInfoStateCopyWith<GetInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetInfoStateCopyWith<$Res> {
  factory $GetInfoStateCopyWith(
          GetInfoState value, $Res Function(GetInfoState) then) =
      _$GetInfoStateCopyWithImpl<$Res, GetInfoState>;
  @useResult
  $Res call(
      {List<City> cities,
      List<City> filteredCities,
      bool isCityEnabled,
      List<CurrencyTypeModel> currencies,
      List<District> districts,
      List<District> filteredDistricts,
      bool isDistrictEnabled,
      List<Country> countries,
      List<Country> filteredCountries,
      bool isCountryEnabled,
      bool isLoading,
      District? selectedDistrict,
      Country? selectedCountry,
      City? selectedCity,
      CurrencyTypeModel? selectedCurrency,
      String? message});

  $CurrencyTypeModelCopyWith<$Res>? get selectedCurrency;
}

/// @nodoc
class _$GetInfoStateCopyWithImpl<$Res, $Val extends GetInfoState>
    implements $GetInfoStateCopyWith<$Res> {
  _$GetInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
    Object? filteredCities = null,
    Object? isCityEnabled = null,
    Object? currencies = null,
    Object? districts = null,
    Object? filteredDistricts = null,
    Object? isDistrictEnabled = null,
    Object? countries = null,
    Object? filteredCountries = null,
    Object? isCountryEnabled = null,
    Object? isLoading = null,
    Object? selectedDistrict = freezed,
    Object? selectedCountry = freezed,
    Object? selectedCity = freezed,
    Object? selectedCurrency = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      filteredCities: null == filteredCities
          ? _value.filteredCities
          : filteredCities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      isCityEnabled: null == isCityEnabled
          ? _value.isCityEnabled
          : isCityEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      currencies: null == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyTypeModel>,
      districts: null == districts
          ? _value.districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<District>,
      filteredDistricts: null == filteredDistricts
          ? _value.filteredDistricts
          : filteredDistricts // ignore: cast_nullable_to_non_nullable
              as List<District>,
      isDistrictEnabled: null == isDistrictEnabled
          ? _value.isDistrictEnabled
          : isDistrictEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      countries: null == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      filteredCountries: null == filteredCountries
          ? _value.filteredCountries
          : filteredCountries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      isCountryEnabled: null == isCountryEnabled
          ? _value.isCountryEnabled
          : isCountryEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedDistrict: freezed == selectedDistrict
          ? _value.selectedDistrict
          : selectedDistrict // ignore: cast_nullable_to_non_nullable
              as District?,
      selectedCountry: freezed == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as Country?,
      selectedCity: freezed == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as City?,
      selectedCurrency: freezed == selectedCurrency
          ? _value.selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyTypeModel?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_GetInfoStateCopyWith<$Res>
    implements $GetInfoStateCopyWith<$Res> {
  factory _$$_GetInfoStateCopyWith(
          _$_GetInfoState value, $Res Function(_$_GetInfoState) then) =
      __$$_GetInfoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<City> cities,
      List<City> filteredCities,
      bool isCityEnabled,
      List<CurrencyTypeModel> currencies,
      List<District> districts,
      List<District> filteredDistricts,
      bool isDistrictEnabled,
      List<Country> countries,
      List<Country> filteredCountries,
      bool isCountryEnabled,
      bool isLoading,
      District? selectedDistrict,
      Country? selectedCountry,
      City? selectedCity,
      CurrencyTypeModel? selectedCurrency,
      String? message});

  @override
  $CurrencyTypeModelCopyWith<$Res>? get selectedCurrency;
}

/// @nodoc
class __$$_GetInfoStateCopyWithImpl<$Res>
    extends _$GetInfoStateCopyWithImpl<$Res, _$_GetInfoState>
    implements _$$_GetInfoStateCopyWith<$Res> {
  __$$_GetInfoStateCopyWithImpl(
      _$_GetInfoState _value, $Res Function(_$_GetInfoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
    Object? filteredCities = null,
    Object? isCityEnabled = null,
    Object? currencies = null,
    Object? districts = null,
    Object? filteredDistricts = null,
    Object? isDistrictEnabled = null,
    Object? countries = null,
    Object? filteredCountries = null,
    Object? isCountryEnabled = null,
    Object? isLoading = null,
    Object? selectedDistrict = freezed,
    Object? selectedCountry = freezed,
    Object? selectedCity = freezed,
    Object? selectedCurrency = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_GetInfoState(
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      filteredCities: null == filteredCities
          ? _value._filteredCities
          : filteredCities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      isCityEnabled: null == isCityEnabled
          ? _value.isCityEnabled
          : isCityEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      currencies: null == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyTypeModel>,
      districts: null == districts
          ? _value._districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<District>,
      filteredDistricts: null == filteredDistricts
          ? _value._filteredDistricts
          : filteredDistricts // ignore: cast_nullable_to_non_nullable
              as List<District>,
      isDistrictEnabled: null == isDistrictEnabled
          ? _value.isDistrictEnabled
          : isDistrictEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      filteredCountries: null == filteredCountries
          ? _value._filteredCountries
          : filteredCountries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      isCountryEnabled: null == isCountryEnabled
          ? _value.isCountryEnabled
          : isCountryEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedDistrict: freezed == selectedDistrict
          ? _value.selectedDistrict
          : selectedDistrict // ignore: cast_nullable_to_non_nullable
              as District?,
      selectedCountry: freezed == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as Country?,
      selectedCity: freezed == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as City?,
      selectedCurrency: freezed == selectedCurrency
          ? _value.selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyTypeModel?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetInfoState extends _GetInfoState with DiagnosticableTreeMixin {
  const _$_GetInfoState(
      {required final List<City> cities,
      required final List<City> filteredCities,
      required this.isCityEnabled,
      required final List<CurrencyTypeModel> currencies,
      required final List<District> districts,
      required final List<District> filteredDistricts,
      required this.isDistrictEnabled,
      required final List<Country> countries,
      required final List<Country> filteredCountries,
      required this.isCountryEnabled,
      required this.isLoading,
      this.selectedDistrict,
      this.selectedCountry,
      this.selectedCity,
      this.selectedCurrency,
      this.message})
      : _cities = cities,
        _filteredCities = filteredCities,
        _currencies = currencies,
        _districts = districts,
        _filteredDistricts = filteredDistricts,
        _countries = countries,
        _filteredCountries = filteredCountries,
        super._();

  final List<City> _cities;
  @override
  List<City> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  final List<City> _filteredCities;
  @override
  List<City> get filteredCities {
    if (_filteredCities is EqualUnmodifiableListView) return _filteredCities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredCities);
  }

  @override
  final bool isCityEnabled;
  final List<CurrencyTypeModel> _currencies;
  @override
  List<CurrencyTypeModel> get currencies {
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  final List<District> _districts;
  @override
  List<District> get districts {
    if (_districts is EqualUnmodifiableListView) return _districts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_districts);
  }

  final List<District> _filteredDistricts;
  @override
  List<District> get filteredDistricts {
    if (_filteredDistricts is EqualUnmodifiableListView)
      return _filteredDistricts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredDistricts);
  }

  @override
  final bool isDistrictEnabled;
  final List<Country> _countries;
  @override
  List<Country> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  final List<Country> _filteredCountries;
  @override
  List<Country> get filteredCountries {
    if (_filteredCountries is EqualUnmodifiableListView)
      return _filteredCountries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredCountries);
  }

  @override
  final bool isCountryEnabled;
  @override
  final bool isLoading;
  @override
  final District? selectedDistrict;
  @override
  final Country? selectedCountry;
  @override
  final City? selectedCity;
  @override
  final CurrencyTypeModel? selectedCurrency;
  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetInfoState(cities: $cities, filteredCities: $filteredCities, isCityEnabled: $isCityEnabled, currencies: $currencies, districts: $districts, filteredDistricts: $filteredDistricts, isDistrictEnabled: $isDistrictEnabled, countries: $countries, filteredCountries: $filteredCountries, isCountryEnabled: $isCountryEnabled, isLoading: $isLoading, selectedDistrict: $selectedDistrict, selectedCountry: $selectedCountry, selectedCity: $selectedCity, selectedCurrency: $selectedCurrency, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetInfoState'))
      ..add(DiagnosticsProperty('cities', cities))
      ..add(DiagnosticsProperty('filteredCities', filteredCities))
      ..add(DiagnosticsProperty('isCityEnabled', isCityEnabled))
      ..add(DiagnosticsProperty('currencies', currencies))
      ..add(DiagnosticsProperty('districts', districts))
      ..add(DiagnosticsProperty('filteredDistricts', filteredDistricts))
      ..add(DiagnosticsProperty('isDistrictEnabled', isDistrictEnabled))
      ..add(DiagnosticsProperty('countries', countries))
      ..add(DiagnosticsProperty('filteredCountries', filteredCountries))
      ..add(DiagnosticsProperty('isCountryEnabled', isCountryEnabled))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('selectedDistrict', selectedDistrict))
      ..add(DiagnosticsProperty('selectedCountry', selectedCountry))
      ..add(DiagnosticsProperty('selectedCity', selectedCity))
      ..add(DiagnosticsProperty('selectedCurrency', selectedCurrency))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetInfoState &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            const DeepCollectionEquality()
                .equals(other._filteredCities, _filteredCities) &&
            (identical(other.isCityEnabled, isCityEnabled) ||
                other.isCityEnabled == isCityEnabled) &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies) &&
            const DeepCollectionEquality()
                .equals(other._districts, _districts) &&
            const DeepCollectionEquality()
                .equals(other._filteredDistricts, _filteredDistricts) &&
            (identical(other.isDistrictEnabled, isDistrictEnabled) ||
                other.isDistrictEnabled == isDistrictEnabled) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            const DeepCollectionEquality()
                .equals(other._filteredCountries, _filteredCountries) &&
            (identical(other.isCountryEnabled, isCountryEnabled) ||
                other.isCountryEnabled == isCountryEnabled) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectedDistrict, selectedDistrict) ||
                other.selectedDistrict == selectedDistrict) &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry) &&
            (identical(other.selectedCity, selectedCity) ||
                other.selectedCity == selectedCity) &&
            (identical(other.selectedCurrency, selectedCurrency) ||
                other.selectedCurrency == selectedCurrency) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cities),
      const DeepCollectionEquality().hash(_filteredCities),
      isCityEnabled,
      const DeepCollectionEquality().hash(_currencies),
      const DeepCollectionEquality().hash(_districts),
      const DeepCollectionEquality().hash(_filteredDistricts),
      isDistrictEnabled,
      const DeepCollectionEquality().hash(_countries),
      const DeepCollectionEquality().hash(_filteredCountries),
      isCountryEnabled,
      isLoading,
      selectedDistrict,
      selectedCountry,
      selectedCity,
      selectedCurrency,
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetInfoStateCopyWith<_$_GetInfoState> get copyWith =>
      __$$_GetInfoStateCopyWithImpl<_$_GetInfoState>(this, _$identity);
}

abstract class _GetInfoState extends GetInfoState {
  const factory _GetInfoState(
      {required final List<City> cities,
      required final List<City> filteredCities,
      required final bool isCityEnabled,
      required final List<CurrencyTypeModel> currencies,
      required final List<District> districts,
      required final List<District> filteredDistricts,
      required final bool isDistrictEnabled,
      required final List<Country> countries,
      required final List<Country> filteredCountries,
      required final bool isCountryEnabled,
      required final bool isLoading,
      final District? selectedDistrict,
      final Country? selectedCountry,
      final City? selectedCity,
      final CurrencyTypeModel? selectedCurrency,
      final String? message}) = _$_GetInfoState;
  const _GetInfoState._() : super._();

  @override
  List<City> get cities;
  @override
  List<City> get filteredCities;
  @override
  bool get isCityEnabled;
  @override
  List<CurrencyTypeModel> get currencies;
  @override
  List<District> get districts;
  @override
  List<District> get filteredDistricts;
  @override
  bool get isDistrictEnabled;
  @override
  List<Country> get countries;
  @override
  List<Country> get filteredCountries;
  @override
  bool get isCountryEnabled;
  @override
  bool get isLoading;
  @override
  District? get selectedDistrict;
  @override
  Country? get selectedCountry;
  @override
  City? get selectedCity;
  @override
  CurrencyTypeModel? get selectedCurrency;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetInfoStateCopyWith<_$_GetInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}
