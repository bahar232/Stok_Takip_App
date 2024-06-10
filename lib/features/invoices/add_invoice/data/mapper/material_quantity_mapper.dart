

import 'package:quantumapp/features/invoices/add_invoice/domain/models/material_quantity.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/basic_invoice_item_model/basic_invoice_item_model.dart';

extension MaterialQuantityExt on MaterialQuantity{

  BasicInvoiceItemModel toInvoiceItem(){
    return BasicInvoiceItemModel(
      brm: material.brm,
      description: "",
      quantity: quantity.toDouble(),
      vat: material.vat,
      price: material.sellingPrice,
      materialId: material.id
    );
  }

}