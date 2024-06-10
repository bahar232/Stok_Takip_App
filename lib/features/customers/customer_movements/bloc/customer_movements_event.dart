


abstract class ICustomerMovementsEvent{}

class CustomerMovementsEventLoadData extends ICustomerMovementsEvent{
  final int customerId;
  CustomerMovementsEventLoadData({required this.customerId});
}

class CustomerMovementsEventClearMessage extends ICustomerMovementsEvent{}
