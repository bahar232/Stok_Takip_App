
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/core/domain/model/i_select_cat_item.dart';
import 'package:quantumapp/features/customers/shared/domain/enums/account_type_enum.dart';

part 'customer.freezed.dart';

@freezed
class Customer with _$Customer implements ISelectCatItem{

  const Customer._();

  const factory Customer({
    required int? id,
    required String name,
    required String code,
    required String related,
    required AccountTypeEnum accountType,
    required String authorizedName,
    required String authorizedSurname,
    required String city,
    required String country,
    required String district,
    required String address,
    required String taxOffice,
    required String tckNo,
    required String taxNo,
    required int? currencyUnitId,
    required String companyCode,
    required String addingUserNameAndSurname,
    required int addingUserId
  }) = _Customer;

  @override
  int get selectCatId => id ?? 0;

  @override
  String get title => name;

}