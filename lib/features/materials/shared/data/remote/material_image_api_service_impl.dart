import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:quantumapp/core/domain/contants/k_app.dart';
import 'package:quantumapp/core/util/api_helper.dart';
import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/features/materials/shared/data/remote/dtos/material_image_dto/material_image_dto.dart';
import 'package:quantumapp/features/materials/shared/data/remote/dtos/material_image_save_dto/material_image_save.dart';
import 'package:quantumapp/features/materials/shared/domain/remote/material_image_api_service.dart';

class MaterialImageApiServiceImpl extends MaterialImageApiService{
  final commonUrl = "${K.api.apiServiceHostUrl}/${K.api.materialImagePath}";

  @override
  Future<Resource<MaterialImageDto>> getImageById(int materialId)async{
    final url = "$commonUrl/$materialId";
    return await ApiHelper.callWithAuthorize(
        performResponse: (headers)async{
          return await http.get(
              Uri.parse(url),
              headers: headers
          );
        },
        onSuccessResponse: (response){
          final decoded = jsonDecode(response.body);
          final dto = MaterialImageDto.fromJson(decoded);
          return ResourceSuccess(dto);
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }

  Future<Resource<void>> addImage(MaterialImageSaveDto saveDto) async{
    return await ApiHelper.callWithAuthorize(
        performResponse: (headers)async{
          var request = http.MultipartRequest(
            'POST', Uri.parse(commonUrl),
          );
          final file = File(saveDto.filePath);
          request.files.add(
            http.MultipartFile(
              'file',
              file.readAsBytes().asStream(),
              file.lengthSync(),
              filename: saveDto.filePath,
            ),
          );
          request.headers.addAll(headers);
          request.fields.addAll({
            "malzemeId": saveDto.materialId.toString(),
          });
          var result = await request.send();
          return result;
        },
        onSuccessResponse: (response){
          return ResourceSuccess(null);
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }


}