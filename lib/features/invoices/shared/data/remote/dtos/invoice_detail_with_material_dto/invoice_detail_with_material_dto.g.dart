// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_detail_with_material_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvoiceDetailWithMaterialDto _$$_InvoiceDetailWithMaterialDtoFromJson(
        Map<String, dynamic> json) =>
    _$_InvoiceDetailWithMaterialDto(
      malzeme: MaterialDto.fromJson(json['malzeme'] as Map<String, dynamic>),
      belgeDetaylari: InvoiceDetailDto.fromJson(
          json['belgeDetaylari'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InvoiceDetailWithMaterialDtoToJson(
        _$_InvoiceDetailWithMaterialDto instance) =>
    <String, dynamic>{
      'malzeme': instance.malzeme,
      'belgeDetaylari': instance.belgeDetaylari,
    };
