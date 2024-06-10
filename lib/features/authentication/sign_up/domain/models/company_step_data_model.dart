


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/core/domain/model/currency_type_model/currency_type_model.dart';
import 'package:quantumapp/features/authentication/sign_up/domain/enums/company_type_enum.dart';
part 'company_step_data_model.freezed.dart';

@freezed
class CompanyStepDataModel with _$CompanyStepDataModel{
  const factory CompanyStepDataModel({
    required String companyName,
    required String authorizedTC,
    required String authorizedName,
    required String authorizedSurname,
    required CompanyTypeEnum companyTypeEnum,
    required CurrencyTypeModel currencyTypeModel,
    required String taxNo,
    required String taxOffice,
  }) = _CompanyStepDataModel;
}