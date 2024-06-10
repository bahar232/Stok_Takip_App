
import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/core/data/remote/dtos/currency_type_dto/currency_type_dto.dart';

abstract class CurrencyTypeApiService{
  Future<Resource<List<CurrencyTypeDto>>> getAllCurrencies();
}