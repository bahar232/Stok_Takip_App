
import 'dart:convert';

import 'package:quantumapp/core/domain/contants/k_app.dart';
import 'package:quantumapp/core/util/api_helper.dart';
import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/core/data/remote/dtos/city_dto/city_dto.dart';
import 'package:http/http.dart' as http;
import 'package:quantumapp/core/domain/remote/city_api_service.dart';

class CityApiServiceImpl extends CityApiService{
  final commonUrl = "${K.api.apiServiceHostUrl}/${K.api.cityPath}";

  @override
  Future<Resource<List<CityDto>>> getAllCities()async{
    return await ApiHelper.call(
        performResponse: (headers)async{
          return await http.get(
            Uri.parse(commonUrl),
          );
        },
        onSuccessResponse: (response){
          final decoded = jsonDecode(response.body) as List;
          final dtos = decoded.map((e) => CityDto.fromJson(e)).toList();
          return ResourceSuccess(dtos);
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }
}