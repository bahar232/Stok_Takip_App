// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_detail_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvoiceDetailResultDto _$$_InvoiceDetailResultDtoFromJson(
        Map<String, dynamic> json) =>
    _$_InvoiceDetailResultDto(
      cari: CustomerDto.fromJson(json['cari'] as Map<String, dynamic>),
      belge: InvoiceDto.fromJson(json['belge'] as Map<String, dynamic>),
      malzemeBelgeler: (json['malzemeBelgeler'] as List<dynamic>)
          .map((e) =>
              InvoiceDetailWithMaterialDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InvoiceDetailResultDtoToJson(
        _$_InvoiceDetailResultDto instance) =>
    <String, dynamic>{
      'cari': instance.cari,
      'belge': instance.belge,
      'malzemeBelgeler': instance.malzemeBelgeler,
    };
