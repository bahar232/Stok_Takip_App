

import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/core/data/remote/dtos/country_dto/country_dto.dart';

abstract class CountryApiService{
  Future<Resource<List<CountryDto>>> getAllCountries();
}