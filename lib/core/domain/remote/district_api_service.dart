

import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/core/data/remote/dtos/customer_dto/customer_dto.dart';
import 'package:quantumapp/core/data/remote/dtos/district_dto/district_dto.dart';

abstract class DistrictApiService{
  Future<Resource<List<DistrictDto>>> getAllDistricts();
}