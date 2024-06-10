

import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/features/materials/shared/data/remote/dtos/material_dto.dart';

abstract class MaterialApiService{

  Future<Resource<List<MaterialDto>>> getAllMaterials();

  Future<Resource<MaterialDto>> getMaterialById(int materialId);

  Future<Resource<String>> addMaterial(MaterialDto materialDto,String? imagePath);

  Future<Resource<String>> patchMaterial(MaterialDto materialDto);

  Future<Resource<String>> deleteMaterial(int materialId);
}