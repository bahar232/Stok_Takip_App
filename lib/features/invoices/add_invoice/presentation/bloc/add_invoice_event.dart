
import 'package:quantumapp/features/customers/add_customer/domain/model/add_customer_data.dart';
import 'package:quantumapp/features/customers/shared/domain/enums/account_type_enum.dart';
import 'package:quantumapp/core/domain/model/city.dart';
import 'package:quantumapp/core/domain/model/country.dart';
import 'package:quantumapp/core/domain/model/currency_type_model/currency_type_model.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';
import 'package:quantumapp/core/domain/model/district.dart';
import 'package:quantumapp/features/invoices/add_invoice/domain/models/material_quantity.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/sales_person/sales_person.dart';
import 'package:quantumapp/features/materials/add_material/domain/model/add_material_data.dart';
import 'package:quantumapp/features/materials/shared/domain/enums/material_type_enum.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_category_model.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';

abstract class IAddInvoiceEvent {}

class AddInvoiceEventLoadData extends IAddInvoiceEvent{}

class AddInvoiceEventSelectSalesPerson extends IAddInvoiceEvent{
  final SalesPerson salesPerson;
  AddInvoiceEventSelectSalesPerson({required this.salesPerson});
}

class AddInvoiceEventSelectCustomer extends IAddInvoiceEvent{
  final Customer customer;
  AddInvoiceEventSelectCustomer({required this.customer});
}

class AddInvoiceEventAddMaterialQuantity extends IAddInvoiceEvent{
  final MaterialModel material;
  final int quantity;

  AddInvoiceEventAddMaterialQuantity({
    required this.material,
    required this.quantity
  });
}

class AddInvoiceEventDeleteMaterialQuantity extends IAddInvoiceEvent{
  final MaterialQuantity materialQuantity;

  AddInvoiceEventDeleteMaterialQuantity({
    required this.materialQuantity,
  });
}


class AddInvoiceEventChangeMaterialQuantity extends IAddInvoiceEvent{
  final MaterialModel material;
  final int updatedQuantity;
  AddInvoiceEventChangeMaterialQuantity({
    required this.material,
    required this.updatedQuantity
  });
}


class AddInvoiceEventSave extends IAddInvoiceEvent{}


class AddInvoiceEventClearMessage extends IAddInvoiceEvent{}

class AddInvoiceEventClearNavigateToBack extends IAddInvoiceEvent{}
