
import 'package:quantumapp/core/domain/extensions/resource_extension.dart';
import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/features/materials/shared/data/mapper/material_category_mapper.dart';
import 'package:quantumapp/features/materials/shared/data/mapper/material_mapper.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_category_model.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';
import 'package:quantumapp/features/materials/shared/domain/remote/material_api_service.dart';
import 'package:quantumapp/features/materials/shared/domain/repo/material_category_api_service.dart';
import 'package:quantumapp/features/materials/shared/domain/repo/material_repo.dart';

class MaterialRepoImpl extends MaterialRepo{
  late final MaterialApiService _apiService;
  late final MaterialCategoryApiService _categoryApiService;

  MaterialRepoImpl({
    required MaterialApiService apiService,
    required MaterialCategoryApiService categoryApiService
  }){
    _apiService = apiService;
    _categoryApiService = categoryApiService;
  }

  @override
  Future<Resource<List<MaterialModel>>> getAllMaterials() async{
    final response = await _apiService.getAllMaterials();
    return response.handleForResourceReturnType(
        onSuccess: (data){
          final models = data.map((e) => e.toMaterialModel()).toList();
          return ResourceSuccess(models);
        }
    );
  }

  @override
  Future<Resource<String>> deleteMaterial(MaterialModel item) async{
    final response = await _apiService.deleteMaterial(item.id ?? 0);
    return response.handleForResourceReturnType(
        onSuccess: (data){
          return ResourceSuccess(data);
        }
    );
  }

  @override
  Future<Resource<String>> addMaterial(MaterialModel material,String? imagePath) {
    return _apiService.addMaterial(material.toMaterialDto(),imagePath);
  }

  @override
  Future<Resource<String>> patchMaterial(MaterialModel updatedMaterial) {
    return _apiService.patchMaterial(updatedMaterial.toMaterialDto());
  }

  @override
  Future<Resource<List<MaterialCategoryModel>>> getAllMaterialCategories() async{

    final response = await _categoryApiService.getAllMaterialCategories();
    return response.handleForResourceReturnType(
        onSuccess: (data){
          final models = data.map((e) => e.toMaterialCategory()).toList();
          return ResourceSuccess(models);
        }
    );
  }

  @override
  Future<Resource<String>> addMaterialCategory(MaterialCategoryModel category) async{
    return _categoryApiService.addMaterialCategory(category.toMaterialCategoryDto());
  }

  @override
  Future<Resource<String>> deleteMaterialCategory(int materialCategoryId) async{
    return _categoryApiService.deleteMaterialCategory(materialCategoryId);
  }
}