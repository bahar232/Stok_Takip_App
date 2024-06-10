

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'auth_dto.freezed.dart';
part 'auth_dto.g.dart';

@freezed
class AuthDto with _$AuthDto{
  const factory AuthDto({
    required int id,
    required String kullaniciAdi,
    required String adiSoyadi,
    required String aktifSirket,
    required String token,
    required DateTime tokenExpireDate
  }) = _AuthDto;

  factory AuthDto.fromJson(Map<String, Object?> json) => _$AuthDtoFromJson(json);
}