

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/core/domain/extensions/double_extension.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';
part 'material_quantity.freezed.dart';

@freezed
class MaterialQuantity with _$MaterialQuantity{

  const MaterialQuantity._();

  const factory MaterialQuantity({
    required MaterialModel material,
    required int quantity
  }) = _MaterialQuantity;

  double get taxTotal{
    return quantity * (material.sellingPrice * (material.vat / 100.toDouble()));
  }
}