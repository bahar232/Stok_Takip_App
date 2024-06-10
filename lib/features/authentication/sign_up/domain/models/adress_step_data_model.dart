

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'adress_step_data_model.freezed.dart';

@freezed
class AddressStepDataModel with _$AddressStepDataModel{
  const factory AddressStepDataModel({
    required String address,
    required String country,
    required String city,
    required String district,
  }) = _AddressStepDataModel;
}