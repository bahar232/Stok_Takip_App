

import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/core/data/remote/dtos/customer_dto/customer_dto.dart';

abstract class CustomerApiService{
  Future<Resource<List<CustomerDto>>> getAllCustomers();

  Future<Resource<CustomerDto>> getCustomerById(int customerId);

  Future<Resource<String>> deleteCustomer(int customerId);

  Future<Resource<String>> updateCustomer(CustomerDto updatedCustomer);

  Future<Resource<String>> addCustomer(CustomerDto customer);

  Future<Resource<String>> patchCustomer(CustomerDto customerDto);

}