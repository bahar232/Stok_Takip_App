


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'login_model.freezed.dart';

@freezed
class LoginModel with _$LoginModel{
  const factory LoginModel({
    required String userName,
    required String password
  }) = _LoginModel;
}