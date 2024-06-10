

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'invoice_detail.freezed.dart';

@freezed
class InvoiceDetail with _$InvoiceDetail{
  const factory InvoiceDetail({
    required int id,
    required int invoiceId,
    required String companyCode,
    required DateTime? date,
    required String no,
    required int? typeId,
    required int materialId,
    required int quantity,
    required double unitPrice,
    required double gross,
    required double vat,
    required double vatRate,
    required double totalPrice,
    required int customerId,
    
  }) = _InvoiceDetail;
}