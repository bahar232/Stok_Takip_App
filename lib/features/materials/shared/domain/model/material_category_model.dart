

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/core/domain/model/i_select_cat_item.dart';
part 'material_category_model.freezed.dart';

@freezed
class MaterialCategoryModel with _$MaterialCategoryModel implements ISelectCatItem{

  const MaterialCategoryModel._();

  const factory MaterialCategoryModel({
    required int? id,
    required String companyCode,
    required String categoryCode,
    required String name
  }) = _MaterialCategoryModel;

  @override
  String get title => name;

  @override
  int get selectCatId => id ?? 0;
}