
import 'package:quantumapp/core/domain/extensions/resource_extension.dart';
import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/core/data/mapper/city_mapper.dart';
import 'package:quantumapp/core/data/mapper/country_mapper.dart';
import 'package:quantumapp/core/data/mapper/currency_type_mapper.dart';
import 'package:quantumapp/core/data/mapper/customer_mapper.dart';
import 'package:quantumapp/core/data/mapper/district_mapper.dart';
import 'package:quantumapp/core/domain/model/city.dart';
import 'package:quantumapp/core/domain/model/country.dart';
import 'package:quantumapp/core/domain/model/currency_type_model/currency_type_model.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';
import 'package:quantumapp/core/domain/model/district.dart';
import 'package:quantumapp/core/domain/remote/city_api_service.dart';
import 'package:quantumapp/core/domain/remote/country_api_service.dart';
import 'package:quantumapp/core/domain/remote/currency_type_api_service.dart';
import 'package:quantumapp/core/domain/remote/customer_api_service.dart';
import 'package:quantumapp/core/domain/remote/district_api_service.dart';
import 'package:quantumapp/features/customers/shared/data/mapper/customer_movement_mapper.dart';
import 'package:quantumapp/features/customers/shared/domain/models/customer_movement.dart';
import 'package:quantumapp/features/customers/shared/domain/remote/customer_movement_api_service.dart';
import 'package:quantumapp/features/customers/shared/domain/repo/customer_repo.dart';

class CustomerRepoImpl extends CustomerRepo{
  late final CustomerApiService _customerApiService;
  late final CustomerMovementApiService _customerMovementApiService;

  CustomerRepoImpl({
    required CustomerApiService customerApiService,
    required CustomerMovementApiService customerMovementApiService,
  }){
    _customerApiService = customerApiService;
    _customerMovementApiService = customerMovementApiService;
  }

  @override
  Future<Resource<List<Customer>>> getAllCustomers() async{
    final response = await _customerApiService.getAllCustomers();

    return response.handleForResourceReturnType(
      onSuccess: (data){
        return ResourceSuccess(data.map((e) => e.toCustomer()).toList());
      }
    );
  }

  @override
  Future<Resource<List<CustomerMovement>>> getAllCustomerMovements(int customerId) async{
    final response = await _customerMovementApiService.getAllCustomerMovements(customerId);

    return response.handleForResourceReturnType(
        onSuccess: (data){
          return ResourceSuccess(data.map((e) => e.toCustomerMovement()).toList());
        }
    );
  }

  @override
  Future<Resource<Customer>> getCustomerById(int customerId) async{
    final response = await _customerApiService.getCustomerById(customerId);
    return response.handleForResourceReturnType(
      onSuccess: (data){
        return ResourceSuccess(data.toCustomer());
      }
    );
  }

  @override
  Future<Resource<String>> deleteCustomer(int customerId) async{
    final response = await _customerApiService.deleteCustomer(customerId);
    return response.handleForResourceReturnType(
        onSuccess: (data){
          return ResourceSuccess(data);
        }
    );
  }

  @override
  Future<Resource<String>> updateCustomer(Customer updatedCustomer) async{
    final response = await _customerApiService.updateCustomer(updatedCustomer.toCustomerDto());

    return response.handleForResourceReturnType(
      onSuccess: (data){
        return ResourceSuccess(data);
      },
    );
  }

  @override
  Future<Resource<String>> addCustomer(Customer customer) async{
    final response = await _customerApiService.addCustomer(customer.toCustomerDto());
    return response.handleForResourceReturnType(
        onSuccess: (data){
          return ResourceSuccess(data);
        }
    );
  }


  @override
  Future<Resource<String>> patchCustomer(Customer updatedCustomer) async{
    final response = await _customerApiService.patchCustomer(updatedCustomer.toCustomerDto());

    return response.handleForResourceReturnType(
      onSuccess: (data){
        return ResourceSuccess(data);
      },
    );
  }



}