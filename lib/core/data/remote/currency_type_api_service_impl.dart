


import 'dart:convert';

import 'package:quantumapp/core/domain/contants/k_app.dart';
import 'package:quantumapp/core/util/api_helper.dart';
import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/core/data/remote/dtos/currency_type_dto/currency_type_dto.dart';
import 'package:quantumapp/core/domain/remote/currency_type_api_service.dart';
import 'package:http/http.dart' as http;

class CurrencyTypeApiServiceImpl extends CurrencyTypeApiService{
  final commonUrl = "${K.api.apiServiceHostUrl}/${K.api.currencyTypePath}";

  @override
  Future<Resource<List<CurrencyTypeDto>>> getAllCurrencies()async{
    return await ApiHelper.call(
        performResponse: (headers)async{
          return await http.get(
              Uri.parse(commonUrl)
          );
        },
        onSuccessResponse: (response){
          final decoded = jsonDecode(response.body) as List;
          final dtos = decoded.map((e) => CurrencyTypeDto.fromJson(e)).toList();
          return ResourceSuccess(dtos);
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }
}