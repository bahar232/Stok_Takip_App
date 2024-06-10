

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/features/customers/shared/domain/enums/account_type_enum.dart';
import 'package:quantumapp/core/domain/model/city.dart';
import 'package:quantumapp/core/domain/model/country.dart';
import 'package:quantumapp/core/domain/model/currency_type_model/currency_type_model.dart';
import 'package:quantumapp/core/domain/model/district.dart';
part 'add_customer_data.freezed.dart';

@freezed
class AddCustomerData with _$AddCustomerData{
  const factory AddCustomerData({
    required String code,
    required String related,
    required String authorizedName,
    required String authorizedSurname,
    required City? selectedCity,
    required Country? selectedCountry,
    required District? selectedDistrict,
    required String address,
    required String taxOffice,
    required String tckNo,
    required String taxNo,
    required CurrencyTypeModel? selectedCurrency,
    required AccountTypeEnum selectedAccountType,
    required int? id,
    required String name,
  }) = _AddCustomerData;
}