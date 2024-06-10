


import 'package:quantumapp/core/data/remote/dtos/country_dto/country_dto.dart';
import 'package:quantumapp/core/domain/model/country.dart';

extension CountryDtoExt on CountryDto{
  Country toCountry(){
    return Country(
      id: ulkeId,
      name: ulkeAdi,
      phoneCode: telKodu,
      dualCode: ikiliKod,
      tripletCode: ucluKod
    );
  }
}