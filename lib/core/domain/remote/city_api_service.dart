

import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/core/data/remote/dtos/city_dto/city_dto.dart';
import 'package:quantumapp/core/data/remote/dtos/customer_dto/customer_dto.dart';

abstract class CityApiService{
  Future<Resource<List<CityDto>>> getAllCities();
}