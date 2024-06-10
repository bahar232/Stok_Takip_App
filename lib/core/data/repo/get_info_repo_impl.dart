

import 'package:quantumapp/core/data/mapper/city_mapper.dart';
import 'package:quantumapp/core/data/mapper/country_mapper.dart';
import 'package:quantumapp/core/data/mapper/currency_type_mapper.dart';
import 'package:quantumapp/core/data/mapper/district_mapper.dart';
import 'package:quantumapp/core/domain/extensions/resource_extension.dart';
import 'package:quantumapp/core/domain/model/city.dart';
import 'package:quantumapp/core/domain/model/country.dart';
import 'package:quantumapp/core/domain/model/currency_type_model/currency_type_model.dart';
import 'package:quantumapp/core/domain/model/district.dart';
import 'package:quantumapp/core/domain/remote/city_api_service.dart';
import 'package:quantumapp/core/domain/remote/country_api_service.dart';
import 'package:quantumapp/core/domain/remote/currency_type_api_service.dart';
import 'package:quantumapp/core/domain/remote/district_api_service.dart';
import 'package:quantumapp/core/domain/repo/get_info_repo.dart';
import 'package:quantumapp/core/util/resource.dart';

class GetInfoRepoImpl extends GetInfoRepo{

  late final CurrencyTypeApiService _currencyTypeApiService;
  late final CountryApiService _countryApiService;
  late final CityApiService _cityApiService;
  late final DistrictApiService _districtApiService;

  GetInfoRepoImpl({
    required CurrencyTypeApiService currencyTypeApiService,
    required CountryApiService countryApiService,
    required CityApiService cityApiService,
    required DistrictApiService districtApiService
  }){
    _currencyTypeApiService = currencyTypeApiService;
    _countryApiService = countryApiService;
    _cityApiService = cityApiService;
    _districtApiService = districtApiService;
  }

  @override
  Future<Resource<List<City>>> getAllCities() async{
    final response = await _cityApiService.getAllCities();

    return response.handleForResourceReturnType(
        onSuccess: (data){
          return ResourceSuccess(data.map((e) => e.toCity()).toList());
        }
    );
  }

  @override
  Future<Resource<List<Country>>> getAllCountries() async{
    final response = await _countryApiService.getAllCountries();

    return response.handleForResourceReturnType(
        onSuccess: (data){
          return ResourceSuccess(data.map((e) => e.toCountry()).toList());
        }
    );
  }

  @override
  Future<Resource<List<District>>> getAllDistricts() async{
    final response = await _districtApiService.getAllDistricts();

    return response.handleForResourceReturnType(
        onSuccess: (data){
          return ResourceSuccess(data.map((e) => e.toDistrict()).toList());
        }
    );
  }

  @override
  Future<Resource<List<CurrencyTypeModel>>> getAllCurrencies() async{
    final response = await _currencyTypeApiService.getAllCurrencies();
    return response.handleForResourceReturnType(
        onSuccess: (data){
          final currencies = data.map((e) => e.toCurrencyType()).toList();
          return ResourceSuccess(currencies);
        }
    );
  }

}