
import 'package:quantumapp/features/invoices/shared/data/remote/dtos/basic_invoice_item_dto/basic_invoice_item_dto.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/basic_invoice_item_model/basic_invoice_item_model.dart';

extension BasicInvoiceItemModelExt on BasicInvoiceItemModel{

  BasicInvoiceItemDto toBasicInvoiceItemDto(){
    return BasicInvoiceItemDto(
      dovizTuru: 1,
      dovizKuru: 1,
      malzemeId: materialId,
      miktar: quantity,
      kdvOrani: vat,
      fiyat: price,
      brm: brm,
      brmSira: 1,
      carpan: 1,
      isk1: 0,
      isk2: 0,
      isk3: 0,
      isk4: 0,
      satirAciklama: description,
      depoKodu: "0",
      isTanimId: 0,
      isTanimKalemDetayId: 0
    );
  }
}