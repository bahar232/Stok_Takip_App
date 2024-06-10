

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'sign_up_dto.freezed.dart';
part 'sign_up_dto.g.dart';

@freezed
class SignUpDto with _$SignUpDto{
  const factory SignUpDto({
    required String sirketAdi,
    required int dovizTuru,
    required String adres,
    required String ulke,
    required String il,
    required String ilce,
    required String vergiNo,
    required String vergiDairesi,
    required int sirketTuru,
    required String yetkiliTc,
    required String yetkiliAdi,
    required String yetkiliSoyAdi,
    required String kullaniciAdi,
    required String kullaniciAdiSoyAdi,
    required String sifre,
    required String kullaniciTc
  }) = _SignUpDto;

  factory SignUpDto.fromJson(Map<String, Object?> json) => _$SignUpDtoFromJson(json);
}