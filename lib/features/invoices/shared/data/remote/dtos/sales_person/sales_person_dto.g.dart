// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_person_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalesPersonDto _$$_SalesPersonDtoFromJson(Map<String, dynamic> json) =>
    _$_SalesPersonDto(
      plasiyerId: json['plasiyerId'] as int?,
      kodu: json['kodu'] as String,
      adi: json['adi'] as String?,
      aktif: json['aktif'] as bool,
      sirketKodu: json['sirketKodu'] as String,
    );

Map<String, dynamic> _$$_SalesPersonDtoToJson(_$_SalesPersonDto instance) =>
    <String, dynamic>{
      'plasiyerId': instance.plasiyerId,
      'kodu': instance.kodu,
      'adi': instance.adi,
      'aktif': instance.aktif,
      'sirketKodu': instance.sirketKodu,
    };
