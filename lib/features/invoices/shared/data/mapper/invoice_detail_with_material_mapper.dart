

import 'package:quantumapp/features/invoices/shared/data/mapper/invoice_detail_mapper.dart';
import 'package:quantumapp/features/invoices/shared/data/remote/dtos/invoice_detail_with_material_dto/invoice_detail_with_material_dto.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_detail_with_material/invoice_detail_with_material.dart';
import 'package:quantumapp/features/materials/shared/data/mapper/material_mapper.dart';

extension InvoiceDetailWithMaterialDtoExt on InvoiceDetailWithMaterialDto{
  InvoiceDetailWithMaterial toInvoiceDetailWithMaterial(){
    return InvoiceDetailWithMaterial(
      material: malzeme.toMaterialModel(),
      invoiceDetail: belgeDetaylari.toInvoiceDetail()
    );
  }
}

