
import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/features/materials/shared/data/remote/dtos/material_category_dto.dart';

abstract class MaterialCategoryApiService{
  Future<Resource<List<MaterialCategoryDto>>> getAllMaterialCategories();

  Future<Resource<String>> addMaterialCategory(MaterialCategoryDto dto);

  Future<Resource<String>> deleteMaterialCategory(int materialCategoryId);
}