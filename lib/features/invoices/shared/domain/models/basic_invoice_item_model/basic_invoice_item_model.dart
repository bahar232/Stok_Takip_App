


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'basic_invoice_item_model.freezed.dart';

@freezed
class BasicInvoiceItemModel with _$BasicInvoiceItemModel{
  const factory BasicInvoiceItemModel({
    required int materialId,
    required double quantity,
    required double vat,
    required double price,
    required String description,
    required String brm
  }) = _BasicInvoiceItemModel;
}