
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class Auth with _$Auth{
  const factory Auth({
    required int id,
    required String userName,
    required String nameSurname,
    required String companyCode,
    required String token,
    required DateTime tokenExpireDate
  }) = _Auth;

  factory Auth.fromJson(Map<String, Object?> json) => _$AuthFromJson(json);
}