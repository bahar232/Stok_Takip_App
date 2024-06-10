
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'customer_dto.freezed.dart';
part 'customer_dto.g.dart';

@freezed
class CustomerDto with _$CustomerDto{
  const factory CustomerDto({
    required int? cariId,
    required String adi,
    required String kodu,
    required String ilgili,
    required int turu,
    required String sahisAdi,
    required String sahisSoyadi,
    required String il,
    required String ulke,
    required String ilce,
    required String adres,
    required String vergiDaire,
    required String tckNo,
    required String vergiNo,
    required int? dovizTuru,
    required String sirketKodu,
    required String ekleyenKullaniciAdiSoyadi,
    required int ekleyenKullaniciId
  }) = _CustomerDto;

  factory CustomerDto.fromJson(Map<String, Object?> json) => _$CustomerDtoFromJson(json);
}
