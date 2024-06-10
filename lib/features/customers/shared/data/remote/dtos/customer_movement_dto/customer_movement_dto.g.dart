// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_movement_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerMovementDto _$$_CustomerMovementDtoFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerMovementDto(
      id: json['id'] as int,
      turuSozel: json['turuSozel'] as String,
      hareketModulSozel: json['hareketModulSozel'] as String,
      tarih: json['tarih'] == null
          ? null
          : DateTime.parse(json['tarih'] as String),
      cariAdi: json['cariAdi'] as String,
      cariKodu: json['cariKodu'] as String,
      aciklama: json['aciklama'] as String,
      tutar: (json['tutar'] as num?)?.toDouble(),
      dovizTuruSozel: json['dovizTuruSozel'] as String,
      dovizKuru: (json['dovizKuru'] as num?)?.toDouble(),
      dovizTutar: (json['dovizTutar'] as num?)?.toDouble(),
      belgeNo: json['belgeNo'] as String,
      hareketBelgeId: json['hareketBelgeId'] as int?,
      hareketModul: json['hareketModul'] as int?,
      kayitTarihi: json['kayitTarihi'] == null
          ? null
          : DateTime.parse(json['kayitTarihi'] as String),
      vade:
          json['vade'] == null ? null : DateTime.parse(json['vade'] as String),
    );

Map<String, dynamic> _$$_CustomerMovementDtoToJson(
        _$_CustomerMovementDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'turuSozel': instance.turuSozel,
      'hareketModulSozel': instance.hareketModulSozel,
      'tarih': instance.tarih?.toIso8601String(),
      'cariAdi': instance.cariAdi,
      'cariKodu': instance.cariKodu,
      'aciklama': instance.aciklama,
      'tutar': instance.tutar,
      'dovizTuruSozel': instance.dovizTuruSozel,
      'dovizKuru': instance.dovizKuru,
      'dovizTutar': instance.dovizTutar,
      'belgeNo': instance.belgeNo,
      'hareketBelgeId': instance.hareketBelgeId,
      'hareketModul': instance.hareketModul,
      'kayitTarihi': instance.kayitTarihi?.toIso8601String(),
      'vade': instance.vade?.toIso8601String(),
    };
