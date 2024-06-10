

import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/features/customers/shared/data/remote/dtos/customer_movement_dto/customer_movement_dto.dart';

abstract class CustomerMovementApiService{
  Future<Resource<List<CustomerMovementDto>>> getAllCustomerMovements(int customerId);
}