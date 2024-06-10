


import 'package:quantumapp/core/data/remote/dtos/city_dto/city_dto.dart';
import 'package:quantumapp/core/domain/model/city.dart';

extension CityDtoExt on CityDto{
  City toCity(){
    return City(
      id: sehirId,
      name: sehirAdi,
      countryCode: ulkeKodu,
      phoneCode: telefonKodu,
      plateNo: plakaNo
    );
  }
}