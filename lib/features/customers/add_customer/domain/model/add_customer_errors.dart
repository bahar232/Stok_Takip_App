

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'add_customer_errors.freezed.dart';

@freezed
class AddCustomerErrors with _$AddCustomerErrors{

  const AddCustomerErrors._();

  const factory AddCustomerErrors({
    String? nameError,
    String? codeError
  }) = _AddCustomerErrors;

  static AddCustomerErrors init(){
    return const AddCustomerErrors();
  }

  bool get anyError {
    return nameError != null  || codeError != null;
  }

}