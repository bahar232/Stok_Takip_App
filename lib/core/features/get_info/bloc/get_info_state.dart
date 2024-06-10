

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/core/domain/model/city.dart';
import 'package:quantumapp/core/domain/model/country.dart';
import 'package:quantumapp/core/domain/model/currency_type_model/currency_type_model.dart';
import 'package:quantumapp/core/domain/model/district.dart';
part 'get_info_state.freezed.dart';

@freezed
class GetInfoState with _$GetInfoState{

  const GetInfoState._();

  const factory GetInfoState({
    required List<City> cities,
    required List<City> filteredCities,
    required bool isCityEnabled,
    required List<CurrencyTypeModel> currencies,
    required List<District> districts,
    required List<District> filteredDistricts,
    required bool isDistrictEnabled,
    required List<Country> countries,
    required List<Country> filteredCountries,
    required bool isCountryEnabled,
    required bool isLoading,
    District? selectedDistrict,
    Country? selectedCountry,
    City? selectedCity,
    CurrencyTypeModel? selectedCurrency,
    String? message
  }) = _GetInfoState;

  static GetInfoState init(){
    return const GetInfoState(
      isLoading: false,
      currencies: [],
      filteredCountries: [],
      countries: [],
      cities: [],
      districts: [],
      filteredDistricts: [],
      filteredCities: [],
      isCityEnabled: false,
      isCountryEnabled: true,
      isDistrictEnabled: false,
    );
  }

  bool get anyEmptyData {
    return cities.isEmpty || countries.isEmpty ||  districts.isEmpty || currencies.isEmpty;
  }

}