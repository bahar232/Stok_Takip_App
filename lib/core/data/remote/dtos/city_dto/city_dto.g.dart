// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CityDto _$$_CityDtoFromJson(Map<String, dynamic> json) => _$_CityDto(
      sehirId: json['sehirId'] as int,
      sehirAdi: json['sehirAdi'] as String,
      plakaNo: json['plakaNo'] as int?,
      telefonKodu: json['telefonKodu'] as int?,
      ulkeKodu: json['ulkeKodu'] as String,
    );

Map<String, dynamic> _$$_CityDtoToJson(_$_CityDto instance) =>
    <String, dynamic>{
      'sehirId': instance.sehirId,
      'sehirAdi': instance.sehirAdi,
      'plakaNo': instance.plakaNo,
      'telefonKodu': instance.telefonKodu,
      'ulkeKodu': instance.ulkeKodu,
    };
