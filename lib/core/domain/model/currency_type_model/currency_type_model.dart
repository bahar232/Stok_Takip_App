import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/core/domain/model/i_select_cat_item.dart';
part 'currency_type_model.freezed.dart';
part 'currency_type_model.g.dart';

@freezed
class CurrencyTypeModel with _$CurrencyTypeModel implements ISelectCatItem{

  const CurrencyTypeModel._();

  const factory CurrencyTypeModel({
    required int id,
    required int currencyType,
    required String description,
    required String shortCode
  }) = _CurrencyTypeModel;

  factory CurrencyTypeModel.fromJson(Map<String, Object?> json) => _$CurrencyTypeModelFromJson(json);

  @override
  String get title => shortCode;

  @override
  int get selectCatId => id;
}