
import 'dart:convert';

import 'package:quantumapp/core/domain/contants/k_app.dart';
import 'package:quantumapp/core/util/api_helper.dart';
import 'package:quantumapp/core/util/resource.dart';
import 'package:http/http.dart' as http;
import 'package:quantumapp/core/data/remote/dtos/district_dto/district_dto.dart';
import 'package:quantumapp/core/domain/remote/district_api_service.dart';

class DistrictApiServiceImpl extends DistrictApiService{
  final commonUrl = "${K.api.apiServiceHostUrl}/${K.api.districtPath}";

  @override
  Future<Resource<List<DistrictDto>>> getAllDistricts()async{
    return await ApiHelper.call(
        performResponse: (headers)async{
          return await http.get(Uri.parse(commonUrl));
        },
        onSuccessResponse: (response){
          final decoded = jsonDecode(response.body) as List;
          final dtos = decoded.map((e) => DistrictDto.fromJson(e)).toList();
          return ResourceSuccess(dtos);
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }
}