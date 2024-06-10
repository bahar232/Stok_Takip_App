
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/features/invoices/shared/data/remote/dtos/invoice_detail_dto/invoice_detail_dto.dart';
import 'package:quantumapp/features/materials/shared/data/remote/dtos/material_dto.dart';
part 'invoice_detail_with_material_dto.freezed.dart';
part 'invoice_detail_with_material_dto.g.dart';

@freezed
class InvoiceDetailWithMaterialDto with _$InvoiceDetailWithMaterialDto{
  const factory InvoiceDetailWithMaterialDto({
    required MaterialDto malzeme,
    required InvoiceDetailDto belgeDetaylari,
  }) = _InvoiceDetailWithMaterialDto;

  factory InvoiceDetailWithMaterialDto.fromJson(Map<String, Object?> json) => _$InvoiceDetailWithMaterialDtoFromJson(json);
}