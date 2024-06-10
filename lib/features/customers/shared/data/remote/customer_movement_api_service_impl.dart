


import 'dart:convert';

import 'package:quantumapp/core/domain/contants/k_app.dart';
import 'package:quantumapp/core/util/api_helper.dart';
import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/features/customers/shared/data/remote/dtos/customer_movement_dto/customer_movement_dto.dart';
import 'package:quantumapp/features/customers/shared/domain/remote/customer_movement_api_service.dart';
import 'package:http/http.dart' as http;

class CustomerMovementApiServiceImpl extends CustomerMovementApiService{
  final commonUrl = "${K.api.apiServiceHostUrl}/${K.api.customerMovementsPath}";

  @override
  Future<Resource<List<CustomerMovementDto>>> getAllCustomerMovements(int customerId)async{
    final url = "$commonUrl/$customerId";
    return await ApiHelper.callWithAuthorize(
        performResponse: (headers)async{
          return await http.get(
              Uri.parse(url),
              headers: headers
          );
        },
        onSuccessResponse: (response){
          final decoded = jsonDecode(response.body) as List;
          final dtos = decoded.map((e) => CustomerMovementDto.fromJson(e)).toList();
          return ResourceSuccess(dtos);
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }

}