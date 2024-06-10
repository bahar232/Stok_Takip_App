


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/features/authentication/sign_up/presentation/bloc/steps_state.dart';

import '../../domain/enums/company_type_enum.dart';
import '../../domain/models/adress_step_data_model.dart';
import '../../domain/models/company_step_data_model.dart';
import '../../domain/models/user_step_data_model.dart';
part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState{

  const SignUpState._();

  const factory SignUpState({
    String? message,
    required int currentStepIndex,
    required StepsState stepsState,
    required CompanyTypeEnum selectedCompanyType,
    CompanyStepDataModel? companyStepData,
    AddressStepDataModel? addressStepData,
    UserStepDataModel? userStepData
  }) = _SignUpState;

  static SignUpState init(){
    return SignUpState(
      currentStepIndex: 0,
      stepsState: StepsState.init(),
      selectedCompanyType: CompanyTypeEnum.individual,
    );
  }
}