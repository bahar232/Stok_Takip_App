

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/core/domain/model/i_select_cat_item.dart';
import 'package:quantumapp/features/materials/shared/domain/enums/material_type_enum.dart';
part 'material_model.freezed.dart';

@freezed
class MaterialModel with _$MaterialModel implements ISelectCatItem{

  const MaterialModel._();

  const factory MaterialModel({
    required int id,
    required String companyCode,
    required String code,
    required String name,
    required MaterialTypeEnum typeEnum,
    required String categoryCode,
    required double sellingPrice,
    required double purchasePrice,
    required double vat,
    required double purchaseVat,
    required String? addingUserNameAndSurname,
    required int? addingUserId,
    required String? editingUserNameAndSurname,
    required int? editingUserId,
    @Default("") String brm
  }) = _MaterialModel;

  @override
  int get selectCatId => id;

  @override
  String get title => name;
}