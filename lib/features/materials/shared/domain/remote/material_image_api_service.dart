
import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/features/materials/shared/data/remote/dtos/material_image_dto/material_image_dto.dart';
import 'package:quantumapp/features/materials/shared/data/remote/dtos/material_image_save_dto/material_image_save.dart';

abstract class MaterialImageApiService{

  Future<Resource<void>> addImage(MaterialImageSaveDto saveDto);

  Future<Resource<MaterialImageDto>> getImageById(int materialId);
}