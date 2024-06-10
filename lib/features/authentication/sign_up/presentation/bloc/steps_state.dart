

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../domain/models/step_model.dart';
part 'steps_state.freezed.dart';

@freezed
class StepsState with _$StepsState{

  const StepsState._();

  const factory StepsState({
    required StepModel companyStep,
    required StepModel addressStep,
    required StepModel userStep,
  }) = _StepsState;

  static StepsState init(){
    return const StepsState(
      companyStep: StepModel(
        title: "Şirket",
        isCurrent: true,
        isCompleted: false,
        order: 0
      ),
      addressStep: StepModel(
        title: "Adres",
        isCurrent: false,
        isCompleted: false,
        order: 1
      ),
      userStep: StepModel(
        title: "Kullanıcı",
        isCurrent: false,
        isCompleted: false,
        order: 2
      )
    );
  }

  StepsState selectStepWithOrder(int order){
    return copyWith(
      companyStep: companyStep.copyWith(
        isCurrent: companyStep.order == order,
        isCompleted: companyStep.order < order
      ),
      addressStep: addressStep.copyWith(
        isCurrent: addressStep.order == order,
        isCompleted: addressStep.order < order
      ),
      userStep: userStep.copyWith(
        isCurrent: userStep.order == order,
        isCompleted: userStep.order < order
      ),
    );
  }


}