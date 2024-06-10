

import 'package:quantumapp/core/data/remote/dtos/district_dto/district_dto.dart';
import 'package:quantumapp/core/domain/model/district.dart';

extension DistrictDtoExt on DistrictDto{
  District toDistrict(){
    return District(
      id: id,
      name: ilceAdi,
      cityPlateCode: ilPlakaKodu,
      districtCode: ilceKodu,
    );
  }
}