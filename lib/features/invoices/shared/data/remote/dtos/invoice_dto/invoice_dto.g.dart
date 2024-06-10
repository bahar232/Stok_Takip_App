// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvoiceDto _$$_InvoiceDtoFromJson(Map<String, dynamic> json) =>
    _$_InvoiceDto(
      belgeId: json['belgeId'] as int,
      turu: json['turu'] as int,
      sirketKodu: json['sirketKodu'] as String,
      tarih: json['tarih'] as String,
      cariId: json['cariId'] as int,
      brut: (json['brut'] as num).toDouble(),
      kdv: (json['kdv'] as num).toDouble(),
      genelToplam: (json['genelToplam'] as num).toDouble(),
      plasiyerId: json['plasiyerId'] as int,
      no: json['no'] as String,
    );

Map<String, dynamic> _$$_InvoiceDtoToJson(_$_InvoiceDto instance) =>
    <String, dynamic>{
      'belgeId': instance.belgeId,
      'turu': instance.turu,
      'sirketKodu': instance.sirketKodu,
      'tarih': instance.tarih,
      'cariId': instance.cariId,
      'brut': instance.brut,
      'kdv': instance.kdv,
      'genelToplam': instance.genelToplam,
      'plasiyerId': instance.plasiyerId,
      'no': instance.no,
    };
