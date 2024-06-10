// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_invoice_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasicInvoiceItemDto _$$_BasicInvoiceItemDtoFromJson(
        Map<String, dynamic> json) =>
    _$_BasicInvoiceItemDto(
      dovizTuru: json['dovizTuru'] as int,
      dovizKuru: (json['dovizKuru'] as num).toDouble(),
      malzemeId: json['malzemeId'] as int,
      miktar: (json['miktar'] as num).toDouble(),
      kdvOrani: (json['kdvOrani'] as num).toDouble(),
      fiyat: (json['fiyat'] as num).toDouble(),
      brm: json['brm'] as String,
      brmSira: json['brmSira'] as int,
      carpan: (json['carpan'] as num).toDouble(),
      isk1: (json['isk1'] as num).toDouble(),
      isk2: (json['isk2'] as num).toDouble(),
      isk3: (json['isk3'] as num).toDouble(),
      isk4: (json['isk4'] as num).toDouble(),
      satirAciklama: json['satirAciklama'] as String,
      depoKodu: json['depoKodu'] as String,
      isTanimId: json['isTanimId'] as int,
      isTanimKalemDetayId: json['isTanimKalemDetayId'] as int,
    );

Map<String, dynamic> _$$_BasicInvoiceItemDtoToJson(
        _$_BasicInvoiceItemDto instance) =>
    <String, dynamic>{
      'dovizTuru': instance.dovizTuru,
      'dovizKuru': instance.dovizKuru,
      'malzemeId': instance.malzemeId,
      'miktar': instance.miktar,
      'kdvOrani': instance.kdvOrani,
      'fiyat': instance.fiyat,
      'brm': instance.brm,
      'brmSira': instance.brmSira,
      'carpan': instance.carpan,
      'isk1': instance.isk1,
      'isk2': instance.isk2,
      'isk3': instance.isk3,
      'isk4': instance.isk4,
      'satirAciklama': instance.satirAciklama,
      'depoKodu': instance.depoKodu,
      'isTanimId': instance.isTanimId,
      'isTanimKalemDetayId': instance.isTanimKalemDetayId,
    };
