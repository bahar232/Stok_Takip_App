// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MaterialDto _$$_MaterialDtoFromJson(Map<String, dynamic> json) =>
    _$_MaterialDto(
      malzemeId: json['malzemeId'] as int,
      sirketKodu: json['sirketKodu'] as String,
      kodu: json['kodu'] as String,
      adi: json['adi'] as String,
      turu: json['turu'] as int,
      kategorikodu: json['kategorikodu'] as String,
      fiyatS1: (json['fiyatS1'] as num).toDouble(),
      fiyatA1: (json['fiyatA1'] as num).toDouble(),
      kdv: (json['kdv'] as num).toDouble(),
      alisKdv: (json['alisKdv'] as num).toDouble(),
      ekleyenKullaniciAdiSoyadi: json['ekleyenKullaniciAdiSoyadi'] as String?,
      ekleyenKullaniciId: json['ekleyenKullaniciId'] as int?,
      duzeltenKullaniciAdiSoyadi: json['duzeltenKullaniciAdiSoyadi'] as String?,
      duzeltenKullaniciId: json['duzeltenKullaniciId'] as int?,
      brm1: json['brm1'] as String?,
    );

Map<String, dynamic> _$$_MaterialDtoToJson(_$_MaterialDto instance) =>
    <String, dynamic>{
      'malzemeId': instance.malzemeId,
      'sirketKodu': instance.sirketKodu,
      'kodu': instance.kodu,
      'adi': instance.adi,
      'turu': instance.turu,
      'kategorikodu': instance.kategorikodu,
      'fiyatS1': instance.fiyatS1,
      'fiyatA1': instance.fiyatA1,
      'kdv': instance.kdv,
      'alisKdv': instance.alisKdv,
      'ekleyenKullaniciAdiSoyadi': instance.ekleyenKullaniciAdiSoyadi,
      'ekleyenKullaniciId': instance.ekleyenKullaniciId,
      'duzeltenKullaniciAdiSoyadi': instance.duzeltenKullaniciAdiSoyadi,
      'duzeltenKullaniciId': instance.duzeltenKullaniciId,
      'brm1': instance.brm1,
    };
