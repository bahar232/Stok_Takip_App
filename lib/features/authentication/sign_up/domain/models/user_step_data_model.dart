

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'user_step_data_model.freezed.dart';

@freezed
class UserStepDataModel with _$UserStepDataModel{
  const factory UserStepDataModel({
    required String userName,
    required String userNameAndSurname,
    required String password,
    required String userTC
  }) = _UserStepDataModel;
}