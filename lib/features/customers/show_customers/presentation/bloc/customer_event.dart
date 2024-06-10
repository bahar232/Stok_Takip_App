
import 'package:quantumapp/core/domain/model/customer/customer.dart';

abstract class ICustomerEvent {}

class CustomerEventSetQuery extends ICustomerEvent{
  final String query;
  CustomerEventSetQuery({required this.query});
}

class CustomerEventSetSearchBarVisibility extends ICustomerEvent{
  final bool isVisible;
  CustomerEventSetSearchBarVisibility({required this.isVisible});
}

class CustomerEventListenQueryChange extends ICustomerEvent{}


class CustomerEventClearMessage extends ICustomerEvent{}

class CustomerEventLoadData extends ICustomerEvent{}

class CustomerEventDelete extends ICustomerEvent{
  final Customer customer;
  CustomerEventDelete({required this.customer});
}