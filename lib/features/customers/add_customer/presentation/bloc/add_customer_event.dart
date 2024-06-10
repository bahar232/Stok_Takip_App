
import 'package:quantumapp/features/customers/add_customer/domain/model/add_customer_data.dart';
import 'package:quantumapp/features/customers/shared/domain/enums/account_type_enum.dart';
import 'package:quantumapp/core/domain/model/city.dart';
import 'package:quantumapp/core/domain/model/country.dart';
import 'package:quantumapp/core/domain/model/currency_type_model/currency_type_model.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';
import 'package:quantumapp/core/domain/model/district.dart';

abstract class IAddCustomerEvent {}

class AddCustomerEventSelectAccountType extends IAddCustomerEvent{
  final AccountTypeEnum accountType;
  AddCustomerEventSelectAccountType({required this.accountType});
}

class AddCustomerEventSave extends IAddCustomerEvent{
  final AddCustomerData customerData;
  AddCustomerEventSave({required this.customerData});
}

class AddCustomerEventUpdate extends IAddCustomerEvent{
  final AddCustomerData customerData;
  final Customer customer;

  AddCustomerEventUpdate({
    required this.customerData,
    required this.customer
  });
}


class AddCustomerEventClearMessage extends IAddCustomerEvent{}

class AddCustomerEventClearNavigateToBack extends IAddCustomerEvent{}
