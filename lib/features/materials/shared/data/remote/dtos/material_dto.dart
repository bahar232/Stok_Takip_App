

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'material_dto.freezed.dart';
part 'material_dto.g.dart';

@freezed
class MaterialDto with _$MaterialDto{
  const factory MaterialDto({
    required int malzemeId,
    required String sirketKodu,
    required String kodu,
    required String adi,
    required int turu,
    required String kategorikodu,
    required double fiyatS1,
    required double fiyatA1,
    required double kdv,
    required double alisKdv,
    required String? ekleyenKullaniciAdiSoyadi,
    required int? ekleyenKullaniciId,
    required String? duzeltenKullaniciAdiSoyadi,
    required int? duzeltenKullaniciId,
    required String? brm1
  }) = _MaterialDto;

  factory MaterialDto.fromJson(Map<String, Object?> json) => _$MaterialDtoFromJson(json);
}