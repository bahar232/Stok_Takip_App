

import 'package:quantumapp/features/invoices/shared/data/remote/dtos/invoice_detail_dto/invoice_detail_dto.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_detail/invoice_detail.dart';

extension InvoiceDetailDtoExt on InvoiceDetailDto{
  InvoiceDetail toInvoiceDetail(){
    return InvoiceDetail(
      id: id,
      invoiceId: belgeId,
      companyCode: sirketKodu,
      date: DateTime.tryParse(tarih),
      no: no,
      typeId: turu,
      materialId: malzemeId,
      quantity: miktar.toInt(),
      unitPrice: brmFiyati,
      gross: brut,
      vat: kdv,
      vatRate: kdvOran,
      totalPrice: genelTutar,
      customerId: cariHesapId
    );
  }
}