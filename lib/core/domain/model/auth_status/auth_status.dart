

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/core/domain/enums/auth_status_enum.dart';
import 'package:quantumapp/core/domain/model/auth/auth.dart';
part 'auth_status.freezed.dart';

@freezed
class AuthStatus with _$AuthStatus{
  const factory AuthStatus({
    required AuthStatusEnum statusEnum,
    required Auth? auth
  }) = _AuthStatus;

  static AuthStatus init(){
    return const AuthStatus(
      auth: null,
      statusEnum: AuthStatusEnum.unKnown
    );
  }
}