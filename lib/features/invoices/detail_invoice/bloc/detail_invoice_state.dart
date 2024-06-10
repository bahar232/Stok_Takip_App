

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_detail_result/invoice_detail_result.dart';
part 'detail_invoice_state.freezed.dart';

@freezed
class DetailInvoiceState with _$DetailInvoiceState{
  const factory DetailInvoiceState({
    required bool isLoading,
    String? message,
    InvoiceDetailResult? invoiceResult
  }) = _DetailInvoiceState;

  static DetailInvoiceState init(){
    return const DetailInvoiceState(
      isLoading: false
    );
  }

}