import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quantumapp/core/domain/contants/k_app.dart';
import 'package:quantumapp/core/util/api_helper.dart';
import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/core/data/remote/dtos/customer_dto/customer_dto.dart';
import 'package:quantumapp/core/util/patch_util.dart';
import 'package:quantumapp/core/domain/remote/customer_api_service.dart';

class CustomerApiServiceImpl extends CustomerApiService{
  final commonUrl = "${K.api.apiServiceHostUrl}/${K.api.customerPath}";

  @override
  Future<Resource<List<CustomerDto>>> getAllCustomers()async{
    return await ApiHelper.callWithAuthorize(
        performResponse: (headers)async{
          return await http.get(
            Uri.parse(commonUrl),
            headers: headers
          );
        },
        onSuccessResponse: (response){
          final decoded = jsonDecode(response.body) as List;
          final dtos = decoded.map((e) => CustomerDto.fromJson(e)).toList();
          return ResourceSuccess(dtos);
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }

  @override
  Future<Resource<CustomerDto>> getCustomerById(int customerId)async{
    final url = "$commonUrl/$customerId";
    return await ApiHelper.callWithAuthorize(
        performResponse: (headers)async{
          return await http.get(
            Uri.parse(url),
            headers: headers
          );
        },
        onSuccessResponse: (response){
          final decoded = jsonDecode(response.body);
          final dto = CustomerDto.fromJson(decoded);
          return ResourceSuccess(dto);
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }

  @override
  Future<Resource<String>> deleteCustomer(int customerId)async{
    final url = "$commonUrl/$customerId";
    return await ApiHelper.callWithAuthorize(
        performResponse: (headers)async{
          return await http.delete(
            Uri.parse(url),
            headers: headers
          );
        },
        onSuccessResponse: (response){
          return ResourceSuccess("Başarılı");
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }

  @override
  Future<Resource<String>> updateCustomer(CustomerDto updatedCustomer)async{
    final url = "$commonUrl/${updatedCustomer.cariId}";

    return await ApiHelper.callWithAuthorize(
        performResponse: (headers)async{
          final body = jsonEncode(updatedCustomer.toJson());
          return await http.put(
            Uri.parse(url),
            body: body,
            headers: headers,
          );
        },
        onSuccessResponse: (response){
          return ResourceSuccess("Başarılı");
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }

  @override
  Future<Resource<String>> patchCustomer(CustomerDto customerDto)async{
    final url = "$commonUrl/${customerDto.cariId}";

    return await ApiHelper.callWithAuthorize(
        performResponse: (headers)async{
          final patchMapData = PatchUtil.transform(dataMap: customerDto.toJson(),op: "replace");
          final body = jsonEncode(patchMapData);
          return await http.patch(
            Uri.parse(url),
            body: body,
            headers: headers,
          );
        },
        onSuccessResponse: (response){
          return ResourceSuccess("Başarılı");
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }

  @override
  Future<Resource<String>> addCustomer(CustomerDto customer)async{
    return await ApiHelper.callWithAuthorize(
        performResponse: (headers)async{
          final body = jsonEncode(customer.toJson());
          return await http.post(
              Uri.parse(commonUrl),
              body: body,
              headers: headers
          );
        },
        onSuccessResponse: (response){
          return ResourceSuccess("Başarılı");
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }
  
}