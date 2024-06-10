

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'step_model.freezed.dart';

@freezed
class StepModel with _$StepModel{

  const StepModel._();

  const factory StepModel({
    required String title,
    required int order,
    @Default(false) bool isCompleted,
    @Default(false) bool isCurrent
  }) = _StepModel;

  bool get isDisabled => !isCompleted && !isCurrent;

  StepState get state{
    if(isCompleted) return StepState.complete;
    if(isDisabled) return StepState.disabled;
    return StepState.indexed;
  }
}