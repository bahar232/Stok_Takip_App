

import 'package:quantumapp/core/data/mapper/customer_mapper.dart';
import 'package:quantumapp/features/invoices/shared/data/mapper/invoice_detail_with_material_mapper.dart';
import 'package:quantumapp/features/invoices/shared/data/mapper/invoice_mapper.dart';
import 'package:quantumapp/features/invoices/shared/data/remote/dtos/invoice_detail_result_dto/invoice_detail_result_dto.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_detail_result/invoice_detail_result.dart';

extension InvoiceDetailResultDtoExt on InvoiceDetailResultDto{
  InvoiceDetailResult toInvoiceDetailResult(){
    return InvoiceDetailResult(
      customer: cari.toCustomer(),
      invoiceModel: belge.toInvoiceModel(),
      invoiceWithMaterials: malzemeBelgeler.map((e) => e.toInvoiceDetailWithMaterial()).toList()
    );
  }
}
