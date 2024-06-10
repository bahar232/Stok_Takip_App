

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_model/invoice_model.dart';
part 'show_invoices_state.freezed.dart';

@freezed
class ShowInvoicesState with _$ShowInvoicesState{
  const factory ShowInvoicesState({
    required bool isLoading,
    required List<InvoiceModel> items,
    String? message
  }) = _ShowInvoicesState;

  static ShowInvoicesState init(){
    return const ShowInvoicesState(
      isLoading: false,
      items: []
    );
  }

}