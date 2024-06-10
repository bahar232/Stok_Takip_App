
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'material_category_dto.freezed.dart';
part 'material_category_dto.g.dart';

@freezed
class MaterialCategoryDto with _$MaterialCategoryDto{
  const factory MaterialCategoryDto({
    required int? id,
    required String sirketKodu,
    required String kategorikodu,
    required String adi
  }) = _MaterialCategoryDto;

  factory MaterialCategoryDto.fromJson(Map<String, Object?> json) => _$MaterialCategoryDtoFromJson(json);
}