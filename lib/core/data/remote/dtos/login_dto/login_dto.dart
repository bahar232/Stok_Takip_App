

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'login_dto.freezed.dart';
part 'login_dto.g.dart';

@freezed
class LoginDto with _$LoginDto{
  const factory LoginDto({
    required String kullaniciAdi,
    required String sifre
  }) = _LoginDto;

  factory LoginDto.fromJson(Map<String, Object?> json) => _$LoginDtoFromJson(json);
}