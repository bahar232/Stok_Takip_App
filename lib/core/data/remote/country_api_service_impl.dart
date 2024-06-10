
import 'dart:convert';

import 'package:quantumapp/core/domain/contants/k_app.dart';
import 'package:quantumapp/core/util/api_helper.dart';
import 'package:quantumapp/core/util/resource.dart';
import 'package:http/http.dart' as http;
import 'package:quantumapp/core/data/remote/dtos/country_dto/country_dto.dart';
import 'package:quantumapp/core/domain/remote/country_api_service.dart';

class CountryApiServiceImpl extends CountryApiService{
  final commonUrl = "${K.api.apiServiceHostUrl}/${K.api.countryPath}";

  @override
  Future<Resource<List<CountryDto>>> getAllCountries()async{
    return await ApiHelper.call(
        performResponse: (headers)async{
          return await http.get(
              Uri.parse(commonUrl)
          );
        },
        onSuccessResponse: (response){
          final decoded = jsonDecode(response.body) as List;
          final dtos = decoded.map((e) => CountryDto.fromJson(e)).toList();
          return ResourceSuccess(dtos);
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }
}