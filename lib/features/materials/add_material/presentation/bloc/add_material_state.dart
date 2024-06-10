


import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/features/materials/shared/domain/enums/material_type_enum.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_category_model.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';
part 'add_material_state.freezed.dart';

@freezed
class AddMaterialState with _$AddMaterialState{
  const factory AddMaterialState({
    required List<MaterialModel> items,
    required List<MaterialCategoryModel> categories,
    required bool isLoading,
    required bool navigateToBackWithSuccess,
    MaterialCategoryModel? selectedCategory,
    MaterialTypeEnum? selectedType,
    String? message,
    File? selectedFile
  }) = _AddMaterialState;

  static AddMaterialState init(){
    return const AddMaterialState(
        categories: [],
        items: [],
        isLoading: false,
        navigateToBackWithSuccess: false
    );
  }

}