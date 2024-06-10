

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/basic_invoice_item_model/basic_invoice_item_model.dart';
part 'invoice_save_model.freezed.dart';

@freezed
class InvoiceSaveModel with _$InvoiceSaveModel{
  const factory InvoiceSaveModel({
    required DateTime date,
    required String description,
    required int customerId,
    required int salesPersonId,
    required List<BasicInvoiceItemModel> invoiceItems,
  }) = _InvoiceSaveModel;
}