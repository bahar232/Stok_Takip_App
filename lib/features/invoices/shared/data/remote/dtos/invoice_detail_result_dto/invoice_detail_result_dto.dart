
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/core/data/remote/dtos/customer_dto/customer_dto.dart';
import 'package:quantumapp/features/invoices/shared/data/remote/dtos/invoice_detail_with_material_dto/invoice_detail_with_material_dto.dart';
import 'package:quantumapp/features/invoices/shared/data/remote/dtos/invoice_dto/invoice_dto.dart';
part 'invoice_detail_result_dto.freezed.dart';
part 'invoice_detail_result_dto.g.dart';

@freezed
class InvoiceDetailResultDto with _$InvoiceDetailResultDto{
  const factory InvoiceDetailResultDto({
    required CustomerDto cari,
    required InvoiceDto belge,
    required List<InvoiceDetailWithMaterialDto> malzemeBelgeler
  }) = _InvoiceDetailResultDto;

  factory InvoiceDetailResultDto.fromJson(Map<String, Object?> json) => _$InvoiceDetailResultDtoFromJson(json);
}