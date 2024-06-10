
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'country_dto.freezed.dart';
part 'country_dto.g.dart';

@freezed
class CountryDto with _$CountryDto{
  const factory CountryDto({
    required int ulkeId,
    required String ikiliKod,
    required String ucluKod,
    required String ulkeAdi,
    required String telKodu
  }) = _CountryDto;

  factory CountryDto.fromJson(Map<String, Object?> json) => _$CountryDtoFromJson(json);
}