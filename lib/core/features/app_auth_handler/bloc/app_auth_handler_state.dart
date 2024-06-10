

import 'package:equatable/equatable.dart';


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'app_auth_handler_state.freezed.dart';

@freezed
class AppAuthHandlerState with _$AppAuthHandlerState{
  const factory AppAuthHandlerState({
    required bool navigateToHome,
    required bool navigateToLogin,
    required bool showPopUpForExpiredSession
  }) = _AppAuthHandlerState;

  static AppAuthHandlerState init(){
    return const AppAuthHandlerState(
      navigateToLogin: false,
      navigateToHome: false,
      showPopUpForExpiredSession: false
    );
  }
}