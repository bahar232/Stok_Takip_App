// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DistrictDto _$$_DistrictDtoFromJson(Map<String, dynamic> json) =>
    _$_DistrictDto(
      id: json['id'] as int,
      ilceAdi: json['ilceAdi'] as String,
      ilceKodu: json['ilceKodu'] as String,
      ilPlakaKodu: json['ilPlakaKodu'] as String,
    );

Map<String, dynamic> _$$_DistrictDtoToJson(_$_DistrictDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ilceAdi': instance.ilceAdi,
      'ilceKodu': instance.ilceKodu,
      'ilPlakaKodu': instance.ilPlakaKodu,
    };
