import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quantumapp/core/domain/contants/k_app.dart';
import 'package:quantumapp/core/util/api_helper.dart';
import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/core/util/patch_util.dart';
import 'package:quantumapp/features/invoices/shared/data/remote/dtos/sales_person/sales_person_dto.dart';
import 'package:quantumapp/features/invoices/shared/domain/remote/sales_person_api_service.dart';

class SalesPersonApiServiceImpl extends SalesPersonApiService{
  final commonUrl = "${K.api.apiServiceHostUrl}/${K.api.salesPersonPath}";

  @override
  Future<Resource<List<SalesPersonDto>>> getSalesPersons()async {
    return await ApiHelper.callWithAuthorize(
        performResponse: (headers)async{
          return await http.get(
            Uri.parse(commonUrl),
            headers: headers
          );
        },
        onSuccessResponse: (response){
          final decoded = jsonDecode(response.body) as List;
          final dtos = decoded.map((e) => SalesPersonDto.fromJson(e)).toList();
          return ResourceSuccess(dtos);
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }
}