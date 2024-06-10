
import 'package:quantumapp/core/data/manager/auth_manager_impl.dart';
import 'package:quantumapp/core/domain/extensions/resource_extension.dart';
import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/core/data/mapper/customer_mapper.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';
import 'package:quantumapp/core/domain/remote/customer_api_service.dart';
import 'package:quantumapp/features/invoices/shared/data/mapper/invoice_detail_result_mapper.dart';
import 'package:quantumapp/features/invoices/shared/data/mapper/invoice_mapper.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_detail_result/invoice_detail_result.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_model/invoice_model.dart';
import 'package:quantumapp/features/invoices/shared/domain/repo/invoice_repo.dart';
import 'package:quantumapp/features/invoices/shared/data/mapper/invoice_save_model_mapper.dart';
import 'package:quantumapp/features/invoices/shared/data/mapper/sales_person_mapper.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_save_model/invoice_save_model.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/sales_person/sales_person.dart';
import 'package:quantumapp/features/invoices/shared/domain/remote/invoice_api_service.dart';
import 'package:quantumapp/features/invoices/shared/domain/remote/sales_person_api_service.dart';
import 'package:quantumapp/features/materials/shared/data/mapper/material_mapper.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';
import 'package:quantumapp/features/materials/shared/domain/remote/material_api_service.dart';

class InvoiceRepoImpl extends InvoiceRepo{

  late final CustomerApiService _customerApiService;
  late final MaterialApiService _materialApiService;
  late final SalesPersonApiService _salesPersonApiService;
  late final InvoiceApiService _invoiceApiService;

  InvoiceRepoImpl({
    required CustomerApiService customerApiService,
    required MaterialApiService materialApiService,
    required SalesPersonApiService salesPersonApiService,
    required InvoiceApiService invoiceApiService
  }){
    _customerApiService = customerApiService;
    _materialApiService = materialApiService;
    _salesPersonApiService = salesPersonApiService;
    _invoiceApiService = invoiceApiService;
  }

  @override
  Future<Resource<List<Customer>>> getCustomers() async{
    final response = await _customerApiService.getAllCustomers();
    return response.handleForResourceReturnType(
        onSuccess: (data){
          final models = data.map((e) => e.toCustomer()).toList();
          return ResourceSuccess(models);
        }
    );
  }

  @override
  Future<Resource<List<MaterialModel>>> getMaterials() async{
    final response = await _materialApiService.getAllMaterials();
    return response.handleForResourceReturnType(
        onSuccess: (data){
          final models = data.map((e) => e.toMaterialModel()).toList();
          return ResourceSuccess(models);
        }
    );
  }

  @override
  Future<Resource<List<SalesPerson>>> getSalesPersons() async{
    final response = await _salesPersonApiService.getSalesPersons();
    return response.handleForResourceReturnType(
      onSuccess: (data){
        final models = data.map((e) => e.toSalesPerson()).toList();
        return ResourceSuccess(models);
      }
    );
  }

  @override
  Future<Resource<String>> addInvoice(InvoiceSaveModel saveModel) async{
    final response = await _invoiceApiService.saveInvoice(saveModel.toInvoiceSaveDto());
    return response.handleForResourceReturnType(
        onSuccess: (data){
          return ResourceSuccess(data);
        }
    );
  }

  @override
  Future<Resource<List<InvoiceModel>>> getInvoiceModels() async{
    final response = await _invoiceApiService.getInvoices();
    return response.handleForResourceReturnType(
        onSuccess: (data){
          final models = data.map((e) => e.toInvoiceModel()).toList();
          return ResourceSuccess(models);
        }
    );
  }

  @override
  Future<Resource<InvoiceDetailResult>> getInvoiceDetail(int invoiceId) async{
    final response = await _invoiceApiService.getInvoiceDetail(invoiceId);
    return response.handleForResourceReturnType(
        onSuccess: (data){
          return ResourceSuccess(data.toInvoiceDetailResult());
        }
    );
  }

}