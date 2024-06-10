
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'district_dto.freezed.dart';
part 'district_dto.g.dart';

@freezed
class DistrictDto with _$DistrictDto{
  const factory DistrictDto({
    required int id,
    required String ilceAdi,
    required String ilceKodu,
    required String ilPlakaKodu
  }) = _DistrictDto;

  factory DistrictDto.fromJson(Map<String, Object?> json) => _$DistrictDtoFromJson(json);
}