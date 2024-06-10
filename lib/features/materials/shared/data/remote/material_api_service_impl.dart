import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:quantumapp/core/domain/contants/k_app.dart';
import 'package:quantumapp/core/util/api_helper.dart';
import 'package:quantumapp/core/util/patch_util.dart';
import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/features/materials/shared/data/remote/dtos/material_dto.dart';
import 'package:quantumapp/features/materials/shared/domain/remote/material_api_service.dart';

class MaterialApiServiceImpl extends MaterialApiService {
  final commonUrl = "${K.api.apiServiceHostUrl}/${K.api.materialPath}";

  @override
  Future<Resource<List<MaterialDto>>> getAllMaterials() async {
    return await ApiHelper.callWithAuthorize(performResponse: (headers) async {
      return await http.get(Uri.parse(commonUrl), headers: headers);
    }, onSuccessResponse: (response) {
      final decoded = jsonDecode(response.body) as List;
      final dtos = decoded.map((e) => MaterialDto.fromJson(e)).toList();
      return ResourceSuccess(dtos);
    }, onError: (error) {
      return ResourceError(error);
    });
  }

  @override
  Future<Resource<MaterialDto>> getMaterialById(int materialId) async {
    final url = "$commonUrl/$materialId";
    return await ApiHelper.callWithAuthorize(performResponse: (headers) async {
      return await http.get(Uri.parse(url), headers: headers);
    }, onSuccessResponse: (response) {
      final decoded = jsonDecode(response.body);
      final dto = MaterialDto.fromJson(decoded);
      return ResourceSuccess(dto);
    }, onError: (error) {
      return ResourceError(error);
    });
  }

  @override
  Future<Resource<String>> addMaterial(
      MaterialDto materialDto, String? imagePath) async {
    return await ApiHelper.callWithAuthorize(performResponse: (headers) async {
      // final body = jsonEncode(materialDto.toJson());
      // return await http.post(
      //     Uri.parse(commonUrl),
      //     body: body,
      //     headers: headers
      // );

      final request = http.MultipartRequest(
        'POST',
        Uri.parse(commonUrl),
      );
      if (imagePath != null) {
        final file = File(imagePath);
        request.files.add(
          http.MultipartFile(
            'file',
            file.readAsBytes().asStream(),
            file.lengthSync(),
            filename: imagePath,
          ),
        );
      }
      request.headers.addAll(headers);
      // request.fields.addAll(materialDto.toJson());
      var result = await request.send();
      return result;
    }, onSuccessResponse: (response) {
      return ResourceSuccess("Başarılı");
    }, onError: (error) {
      return ResourceError(error);
    });
  }

  @override
  Future<Resource<String>> patchMaterial(MaterialDto materialDto) async {
    final url = "$commonUrl/${materialDto.malzemeId}";

    return await ApiHelper.callWithAuthorize(performResponse: (headers) async {
      final patchMapData =
          PatchUtil.transform(dataMap: materialDto.toJson(), op: "replace");
      final body = jsonEncode(patchMapData);
      return await http.patch(
        Uri.parse(url),
        body: body,
        headers: headers,
      );
    }, onSuccessResponse: (response) {
      return ResourceSuccess("Başarılı");
    }, onError: (error) {
      return ResourceError(error);
    });
  }

  @override
  Future<Resource<String>> deleteMaterial(int materialId) async {
    final url = "$commonUrl/$materialId";
    return await ApiHelper.callWithAuthorize(performResponse: (headers) async {
      return await http.delete(Uri.parse(url), headers: headers);
    }, onSuccessResponse: (response) {
      return ResourceSuccess("Başarılı");
    }, onError: (error) {
      return ResourceError(error);
    });
  }
}
