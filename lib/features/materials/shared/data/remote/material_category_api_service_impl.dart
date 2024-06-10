
import 'dart:convert';

import 'package:quantumapp/core/domain/contants/k_app.dart';
import 'package:quantumapp/core/util/api_helper.dart';
import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/core/data/remote/dtos/city_dto/city_dto.dart';
import 'package:http/http.dart' as http;
import 'package:quantumapp/core/domain/remote/city_api_service.dart';
import 'package:quantumapp/features/materials/shared/data/remote/dtos/material_category_dto.dart';
import 'package:quantumapp/features/materials/shared/domain/repo/material_category_api_service.dart';

class MaterialCategoryApiServiceImpl extends MaterialCategoryApiService{
  final commonUrl = "${K.api.apiServiceHostUrl}/${K.api.materialCategoryPath}";

  @override
  Future<Resource<List<MaterialCategoryDto>>> getAllMaterialCategories()async{
    return await ApiHelper.callWithAuthorize(
        performResponse: (headers)async{
          return await http.get(
            Uri.parse(commonUrl),
            headers: headers
          );
        },
        onSuccessResponse: (response){
          final decoded = jsonDecode(response.body) as List;
          final dtos = decoded.map((e) => MaterialCategoryDto.fromJson(e)).toList();
          return ResourceSuccess(dtos);
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }

  @override
  Future<Resource<String>> addMaterialCategory(MaterialCategoryDto dto)async{
    return await ApiHelper.callWithAuthorize(
        performResponse: (headers)async{
          return await http.post(
              Uri.parse(commonUrl),
              headers: headers,
              body: jsonEncode(dto.toJson())
          );
        },
        onSuccessResponse: (response){
          return ResourceSuccess("Başarıyla Eklendi");
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }

  @override
  Future<Resource<String>> deleteMaterialCategory(int materialCategoryId)async{
    final url = "$commonUrl/$materialCategoryId";
    return await ApiHelper.callWithAuthorize(
        performResponse: (headers)async{
          return await http.delete(
              Uri.parse(url),
              headers: headers
          );
        },
        onSuccessResponse: (response){
          return ResourceSuccess("Başarıyla Silindi");
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }
}