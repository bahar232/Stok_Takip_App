

import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/features/invoices/shared/data/remote/dtos/invoice_detail_result_dto/invoice_detail_result_dto.dart';
import 'package:quantumapp/features/invoices/shared/data/remote/dtos/invoice_dto/invoice_dto.dart';
import 'package:quantumapp/features/invoices/shared/data/remote/dtos/invoice_save_dto/invoice_save_dto.dart';

abstract class InvoiceApiService{

  Future<Resource<InvoiceDetailResultDto>> getInvoiceDetail(int invoiceId);

  Future<Resource<List<InvoiceDto>>> getInvoices();

  Future<Resource<String>> saveInvoice(InvoiceSaveDto saveDto);
}