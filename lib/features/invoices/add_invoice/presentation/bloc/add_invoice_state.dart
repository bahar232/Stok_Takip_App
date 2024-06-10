


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quantumapp/core/domain/extensions/double_extension.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';
import 'package:quantumapp/features/invoices/add_invoice/domain/models/material_quantity.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/sales_person/sales_person.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';
part 'add_invoice_state.freezed.dart';

@freezed
class AddInvoiceState with _$AddInvoiceState{

  const AddInvoiceState._();

  const factory AddInvoiceState({
    required List<MaterialModel> materials,
    required List<MaterialQuantity> addedMaterials,
    required List<Customer> customers,
    required bool isLoading,
    required bool navigateToBack,
    required List<SalesPerson> salesPersons,
    SalesPerson? selectedSalesPerson,
    Customer? selectedCustomer,
    String? message,
  }) = _AddInvoiceState;

  static AddInvoiceState init(){
    return const AddInvoiceState(
      isLoading: false,
      navigateToBack: false,
      addedMaterials: [],
      customers: [],
      materials: [],
      salesPersons: []
    );
  }

  double get subTotal{
    double result = 0;
    for(final item in addedMaterials){
      result += item.quantity * item.material.sellingPrice;
    }
    return result.asFixed(2);
  }

  double get taxTotal{
    double result = 0;
    for(final item in addedMaterials){
      result += item.taxTotal;
    }
    return result.asFixed(2);
  }

  double get totalPrice{
    return (subTotal + taxTotal).asFixed(2);
  }

}