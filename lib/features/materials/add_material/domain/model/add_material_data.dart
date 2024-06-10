


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quantumapp/features/materials/shared/domain/enums/material_type_enum.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_category_model.dart';
part 'add_material_data.freezed.dart';

@freezed
class AddMaterialData with _$AddMaterialData{
  const factory AddMaterialData({
    required int? id,
    required String code,
    required String name,
    required MaterialTypeEnum selectedType,
    required MaterialCategoryModel selectedCategory,
    required double sellingPrice,
    required double purchasePrice,
    required double vat,
    required double purchaseVat,
  }) = _AddMaterialData;
}