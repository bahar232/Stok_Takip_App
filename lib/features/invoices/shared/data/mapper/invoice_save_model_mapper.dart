

import 'package:quantumapp/features/invoices/shared/data/mapper/basic_invoice_item_mapper.dart';
import 'package:quantumapp/features/invoices/shared/data/remote/dtos/invoice_save_dto/invoice_save_dto.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_save_model/invoice_save_model.dart';

extension InvoiceSaveModelExt on InvoiceSaveModel{

  InvoiceSaveDto toInvoiceSaveDto(){
    return InvoiceSaveDto(
      tarih: date.toIso8601String(),
      vade: date.toIso8601String(),
      no: "",
      bankaId: 0,
      subeId: 0,
      genelAciklama: "",
      cariId: customerId,
      turu: 8,
      belgeNo: "",
      kalemler: invoiceItems.map((e) => e.toBasicInvoiceItemDto()).toList(),
      plasiyerId: salesPersonId
    );
  }

}