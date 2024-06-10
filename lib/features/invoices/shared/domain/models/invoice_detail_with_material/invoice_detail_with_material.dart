


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_detail/invoice_detail.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';
part 'invoice_detail_with_material.freezed.dart';

@freezed
class InvoiceDetailWithMaterial with _$InvoiceDetailWithMaterial{
  const factory InvoiceDetailWithMaterial({
    required MaterialModel material,
    required InvoiceDetail invoiceDetail
  }) = _InvoiceDetailWithMaterial;
}