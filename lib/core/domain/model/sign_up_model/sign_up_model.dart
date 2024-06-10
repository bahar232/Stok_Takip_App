

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quantumapp/core/domain/model/currency_type_model/currency_type_model.dart';
part 'sign_up_model.freezed.dart';

@freezed
class SignUpModel with _$SignUpModel{
  const factory SignUpModel({
    required String companyName,
    required CurrencyTypeModel currencyTypeModel,
    required String address,
    required String country,
    required String city,
    required String district,
    required String taxNo,
    required String taxOffice,
    required int companyTypeId,
    required String authorizedTC,
    required String authorizedName,
    required String authorizedSurname,
    required String userName,
    required String userNameAndSurname,
    required String password,
    required String userTC
  }) = _SignUpModel;
}