
import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/core/domain/model/city.dart';
import 'package:quantumapp/core/domain/model/country.dart';
import 'package:quantumapp/core/domain/model/currency_type_model/currency_type_model.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';
import 'package:quantumapp/core/domain/model/district.dart';
import 'package:quantumapp/features/customers/shared/domain/models/customer_movement.dart';

abstract class CustomerRepo{

  Future<Resource<List<Customer>>> getAllCustomers();

  Future<Resource<List<CustomerMovement>>> getAllCustomerMovements(int customerId);

  Future<Resource<Customer>> getCustomerById(int customerId);

  Future<Resource<String>> deleteCustomer(int customerId);

  Future<Resource<String>> updateCustomer(Customer updatedCustomer);

  Future<Resource<String>> patchCustomer(Customer updatedCustomer);

  Future<Resource<String>> addCustomer(Customer customer);

}