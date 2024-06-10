

import 'package:quantumapp/core/domain/model/city.dart';
import 'package:quantumapp/core/domain/model/country.dart';
import 'package:quantumapp/core/domain/model/currency_type_model/currency_type_model.dart';
import 'package:quantumapp/core/domain/model/district.dart';
import 'package:quantumapp/core/util/resource.dart';

abstract class GetInfoRepo{

  Future<Resource<List<City>>> getAllCities();

  Future<Resource<List<Country>>> getAllCountries();

  Future<Resource<List<District>>> getAllDistricts();

  Future<Resource<List<CurrencyTypeModel>>> getAllCurrencies();
}