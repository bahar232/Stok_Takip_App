

import 'package:quantumapp/core/domain/model/city.dart';
import 'package:quantumapp/core/domain/model/country.dart';
import 'package:quantumapp/core/domain/model/currency_type_model/currency_type_model.dart';
import 'package:quantumapp/core/domain/model/district.dart';
import 'package:quantumapp/core/features/get_info/models/get_info_init_params.dart';
import 'package:quantumapp/features/customers/shared/domain/enums/account_type_enum.dart';

abstract class IGetInfoEvent{}

class GetInfoEventClearMessage extends IGetInfoEvent{}

class GetInfoEventLoadData extends IGetInfoEvent{
  final GetInfoInitParams? initParams;

  GetInfoEventLoadData({
    this.initParams
  });
}

class GetInfoEventCheckLoadData extends IGetInfoEvent{
  final GetInfoInitParams? initParams;

  GetInfoEventCheckLoadData({
    this.initParams
  });
}

class GetInfoEventSelectCountry extends IGetInfoEvent{
  final Country country;
  GetInfoEventSelectCountry({required this.country});
}

class GetInfoEventSelectCurrency extends IGetInfoEvent{
  final CurrencyTypeModel currency;
  GetInfoEventSelectCurrency({required this.currency});
}

class GetInfoEventSelectCity extends IGetInfoEvent{
  final City city;
  GetInfoEventSelectCity({required this.city});
}

class GetInfoEventSelectAccountType extends IGetInfoEvent{
  final AccountTypeEnum accountType;
  GetInfoEventSelectAccountType({required this.accountType});
}

class GetInfoEventSelectDistrict extends IGetInfoEvent{
  final District district;
  GetInfoEventSelectDistrict({required this.district});
}