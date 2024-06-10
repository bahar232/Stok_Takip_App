

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'invoice_model.freezed.dart';

@freezed
class InvoiceModel with _$InvoiceModel{
  const factory InvoiceModel({
    required int id,
    required int typeId,
    required String companyCode,
    required DateTime date,
    required String no,
    required int customerId,
    required double gross,
    required double vat,
    required double total,
    required int salesPersonId,
  }) = _InvoiceModel;
}