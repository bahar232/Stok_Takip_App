
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState{
  const factory LoginState({
    String? message,
    required bool isLoading
  }) = _LoginState;

  static LoginState init(){
    return LoginState(
       isLoading: false
    );
  }

}