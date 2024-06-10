

import 'package:quantumapp/features/materials/add_material/domain/model/add_material_data.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';

extension AddMaterialDataExt on AddMaterialData{
  MaterialModel toMaterial({
    required String companyCode,
    String? addingUserNameAndSurname,
    int? addingUserId,
    String? editingUserNameAndSurname,
    int? editingUserId
  }){
    return MaterialModel(
        id: id ?? 0,
        name: name,
        categoryCode: selectedCategory.categoryCode,
        purchasePrice: purchasePrice,
        purchaseVat: purchaseVat,
        typeEnum: selectedType,
        sellingPrice: sellingPrice,
        vat: vat,
        code: code,
        editingUserId: editingUserId,
        editingUserNameAndSurname: editingUserNameAndSurname,
        addingUserNameAndSurname: addingUserNameAndSurname,
        addingUserId: addingUserId,
        companyCode: companyCode
    );
  }




}