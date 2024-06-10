

import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_category_model.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';

abstract class MaterialRepo{


  Future<Resource<List<MaterialModel>>> getAllMaterials();

  Future<Resource<String>> deleteMaterial(MaterialModel item);

  Future<Resource<String>> addMaterial(MaterialModel material,String? imagePath);

  Future<Resource<String>> patchMaterial(MaterialModel updatedMaterial);



  Future<Resource<List<MaterialCategoryModel>>> getAllMaterialCategories();

  Future<Resource<String>> addMaterialCategory(MaterialCategoryModel category);

  Future<Resource<String>> deleteMaterialCategory(int materialCategoryId);

}