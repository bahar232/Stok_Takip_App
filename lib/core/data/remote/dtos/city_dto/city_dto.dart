

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'city_dto.freezed.dart';
part 'city_dto.g.dart';

@freezed
class CityDto with _$CityDto{
  const factory CityDto({
    required int sehirId,
    required String sehirAdi,
    required int? plakaNo,
    required int? telefonKodu,
    required String ulkeKodu
  }) = _CityDto;

  factory CityDto.fromJson(Map<String, Object?> json) => _$CityDtoFromJson(json);
}