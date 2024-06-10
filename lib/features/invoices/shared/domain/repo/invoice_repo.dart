
import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_detail_result/invoice_detail_result.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_model/invoice_model.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_save_model/invoice_save_model.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/sales_person/sales_person.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';

abstract class InvoiceRepo{

  Future<Resource<List<SalesPerson>>> getSalesPersons();

  Future<Resource<List<Customer>>> getCustomers();

  Future<Resource<List<MaterialModel>>> getMaterials();

  Future<Resource<String>> addInvoice(InvoiceSaveModel saveModel);

  Future<Resource<List<InvoiceModel>>> getInvoiceModels();

  Future<Resource<InvoiceDetailResult>> getInvoiceDetail(int invoiceId);
}