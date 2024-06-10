// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvoiceDetailDto _$$_InvoiceDetailDtoFromJson(Map<String, dynamic> json) =>
    _$_InvoiceDetailDto(
      id: json['id'] as int,
      belgeId: json['belgeId'] as int,
      sirketKodu: json['sirketKodu'] as String,
      turu: json['turu'] as int,
      tarih: json['tarih'] as String,
      no: json['no'] as String,
      malzemeId: json['malzemeId'] as int,
      miktar: (json['miktar'] as num).toDouble(),
      brmFiyati: (json['brmFiyati'] as num).toDouble(),
      brut: (json['brut'] as num).toDouble(),
      kdv: (json['kdv'] as num).toDouble(),
      kdvOran: (json['kdvOran'] as num).toDouble(),
      genelTutar: (json['genelTutar'] as num).toDouble(),
      cariHesapId: json['cariHesapId'] as int,
    );

Map<String, dynamic> _$$_InvoiceDetailDtoToJson(_$_InvoiceDetailDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'belgeId': instance.belgeId,
      'sirketKodu': instance.sirketKodu,
      'turu': instance.turu,
      'tarih': instance.tarih,
      'no': instance.no,
      'malzemeId': instance.malzemeId,
      'miktar': instance.miktar,
      'brmFiyati': instance.brmFiyati,
      'brut': instance.brut,
      'kdv': instance.kdv,
      'kdvOran': instance.kdvOran,
      'genelTutar': instance.genelTutar,
      'cariHesapId': instance.cariHesapId,
    };
