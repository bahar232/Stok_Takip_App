// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_save_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvoiceSaveDto _$$_InvoiceSaveDtoFromJson(Map<String, dynamic> json) =>
    _$_InvoiceSaveDto(
      tarih: json['tarih'] as String,
      turu: json['turu'] as int,
      vade: json['vade'] as String,
      belgeNo: json['belgeNo'] as String,
      no: json['no'] as String,
      genelAciklama: json['genelAciklama'] as String,
      cariId: json['cariId'] as int,
      plasiyerId: json['plasiyerId'] as int,
      bankaId: json['bankaId'] as int,
      kalemler: (json['kalemler'] as List<dynamic>)
          .map((e) => BasicInvoiceItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      subeId: json['subeId'] as int,
    );

Map<String, dynamic> _$$_InvoiceSaveDtoToJson(_$_InvoiceSaveDto instance) =>
    <String, dynamic>{
      'tarih': instance.tarih,
      'turu': instance.turu,
      'vade': instance.vade,
      'belgeNo': instance.belgeNo,
      'no': instance.no,
      'genelAciklama': instance.genelAciklama,
      'cariId': instance.cariId,
      'plasiyerId': instance.plasiyerId,
      'bankaId': instance.bankaId,
      'kalemler': instance.kalemler,
      'subeId': instance.subeId,
    };
