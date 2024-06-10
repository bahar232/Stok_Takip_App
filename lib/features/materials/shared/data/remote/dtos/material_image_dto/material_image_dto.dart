
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/core/data/converters/uint8_converter.dart';
part 'material_image_dto.freezed.dart';
part 'material_image_dto.g.dart';

@freezed
class MaterialImageDto with _$MaterialImageDto{
  const factory MaterialImageDto({
    required int id,
    required int malzemeId,
    required String sirketKodu,
    @Uint8ListConverter()
    required Uint8List? img1
  }) = _MaterialImageDto;

  factory MaterialImageDto.fromJson(Map<String, Object?> json) => _$MaterialImageDtoFromJson(json);
}