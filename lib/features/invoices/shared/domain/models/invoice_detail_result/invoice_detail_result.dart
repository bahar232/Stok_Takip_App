

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_detail_with_material/invoice_detail_with_material.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_model/invoice_model.dart';
part 'invoice_detail_result.freezed.dart';

@freezed
class InvoiceDetailResult with _$InvoiceDetailResult{
  const factory InvoiceDetailResult({
    required Customer customer,
    required InvoiceModel invoiceModel,
    required List<InvoiceDetailWithMaterial> invoiceWithMaterials
  }) = _InvoiceDetailResult;
}