


import 'package:quantumapp/core/data/remote/dtos/currency_type_dto/currency_type_dto.dart';
import 'package:quantumapp/core/domain/model/currency_type_model/currency_type_model.dart';

extension CurrencyTypeDtoExt on CurrencyTypeDto{
  CurrencyTypeModel toCurrencyType(){
    return CurrencyTypeModel(
        id: id,
        currencyType: dovizTuru,
        description: aciklama,
        shortCode: merkezBankasiKodu
    );
  }
}