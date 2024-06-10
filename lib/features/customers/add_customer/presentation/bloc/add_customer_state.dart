

import 'package:equatable/equatable.dart';
import 'package:quantumapp/features/customers/add_customer/domain/model/add_customer_errors.dart';
import 'package:quantumapp/features/customers/shared/domain/enums/account_type_enum.dart';
import 'package:quantumapp/core/domain/model/city.dart';
import 'package:quantumapp/core/domain/model/country.dart';
import 'package:quantumapp/core/domain/model/currency_type_model/currency_type_model.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';
import 'package:quantumapp/core/domain/model/district.dart';



import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'add_customer_state.freezed.dart';

@freezed
class AddCustomerState with _$AddCustomerState{
  const factory AddCustomerState({
    String? message,
    required AccountTypeEnum selectedAccountType,
    required bool navigateToBackWithSuccess,
    @Default(false) bool isLoading,
  }) = _AddCustomerState;

  static AddCustomerState init(){
    return AddCustomerState(
      selectedAccountType: AccountTypeEnum.defaultType,
      navigateToBackWithSuccess: false,
    );
  }

}