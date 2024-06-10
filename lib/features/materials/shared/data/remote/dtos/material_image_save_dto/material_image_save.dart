
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'material_image_save.freezed.dart';
part 'material_image_save.g.dart';

@freezed
class MaterialImageSaveDto with _$MaterialImageSaveDto{
  const factory MaterialImageSaveDto({
    required int materialId,
    required String filePath
  }) = _MaterialImageSaveDto;

  factory MaterialImageSaveDto.fromJson(Map<String, Object?> json) => _$MaterialImageSaveDtoFromJson(json);
}