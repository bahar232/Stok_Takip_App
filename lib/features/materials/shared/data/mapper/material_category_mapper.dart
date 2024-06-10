

import 'package:quantumapp/features/materials/shared/data/remote/dtos/material_category_dto.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_category_model.dart';


extension MaterialCategoryDtoExt on MaterialCategoryDto{

  MaterialCategoryModel toMaterialCategory(){
    return MaterialCategoryModel(
      name: adi,
      companyCode: sirketKodu,
      categoryCode: kategorikodu,
      id: id
    );
  }

}


extension MaterialCategoryModelExt on MaterialCategoryModel{

  MaterialCategoryDto toMaterialCategoryDto(){
    return MaterialCategoryDto(
        id: id,
        sirketKodu: companyCode,
        kategorikodu: categoryCode,
        adi: name
    );
  }

}