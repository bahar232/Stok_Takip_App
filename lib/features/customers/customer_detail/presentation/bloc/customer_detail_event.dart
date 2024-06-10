
abstract class ICustomerDetailEvent {}

class CustomerDetailEventLoadCustomer extends ICustomerDetailEvent{
  final int customerId;
  CustomerDetailEventLoadCustomer({required this.customerId});
}

class CustomerDetailEventClearMessage extends ICustomerDetailEvent{}