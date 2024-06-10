
import 'package:quantumapp/features/invoices/shared/data/remote/dtos/invoice_dto/invoice_dto.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_model/invoice_model.dart';

extension InvoiceDtoExt on InvoiceDto{
  InvoiceModel toInvoiceModel(){
    return InvoiceModel(
      id: belgeId,
      typeId: turu,
      companyCode: sirketKodu,
      date: DateTime.parse(tarih),
      customerId: cariId,
      gross: brut,
      vat: kdv,
      total: genelToplam,
      salesPersonId: plasiyerId,
      no: no
    );
  }
}