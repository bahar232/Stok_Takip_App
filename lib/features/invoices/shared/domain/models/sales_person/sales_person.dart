

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/core/domain/model/i_select_cat_item.dart';
part 'sales_person.freezed.dart';

@freezed
class SalesPerson with _$SalesPerson implements ISelectCatItem{

  const SalesPerson._();

  const factory SalesPerson({
    required int? id,
    required String code,
    required String? name,
    required bool active,
    required String companyCode
  }) = _SalesPerson;

  @override
  int get selectCatId => id ?? 0;

  @override
  String get title => name ?? "";
}