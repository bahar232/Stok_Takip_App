// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryDto _$$_CountryDtoFromJson(Map<String, dynamic> json) =>
    _$_CountryDto(
      ulkeId: json['ulkeId'] as int,
      ikiliKod: json['ikiliKod'] as String,
      ucluKod: json['ucluKod'] as String,
      ulkeAdi: json['ulkeAdi'] as String,
      telKodu: json['telKodu'] as String,
    );

Map<String, dynamic> _$$_CountryDtoToJson(_$_CountryDto instance) =>
    <String, dynamic>{
      'ulkeId': instance.ulkeId,
      'ikiliKod': instance.ikiliKod,
      'ucluKod': instance.ucluKod,
      'ulkeAdi': instance.ulkeAdi,
      'telKodu': instance.telKodu,
    };
