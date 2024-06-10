

import 'package:equatable/equatable.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';

class CustomerDetailState extends Equatable{

  final String? message;
  final Customer? customer;
  final bool isLoading;

  const CustomerDetailState({
    this.message,
    this.customer,
    required this.isLoading
  });

  CustomerDetailState copyWith({
    String? message, bool setMessage = false,
    Customer? customer, bool setCustomer = false,
    bool? isLoading
  }){
    return CustomerDetailState(
        message: setMessage ? message : this.message,
        customer: setCustomer ? customer : this.customer,
        isLoading: isLoading ?? this.isLoading,
    );
  }

  static CustomerDetailState init(){
    return const CustomerDetailState(
      isLoading: false
    );
  }

  @override
  List<Object?> get props => [
    message, customer,isLoading
  ];
}