

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/data/remote/auth_remote_service_impl.dart';
import 'package:quantumapp/core/data/remote/city_api_service_impl.dart';
import 'package:quantumapp/core/data/remote/country_api_service_impl.dart';
import 'package:quantumapp/core/data/remote/currency_type_api_service_impl.dart';
import 'package:quantumapp/core/data/remote/customer_api_service_impl.dart';
import 'package:quantumapp/core/data/remote/district_api_service_impl.dart';
import 'package:quantumapp/core/data/services/connectivity_service_impl.dart';
import 'package:quantumapp/core/domain/remote/auth_remote_service.dart';
import 'package:quantumapp/core/domain/remote/city_api_service.dart';
import 'package:quantumapp/core/domain/remote/country_api_service.dart';
import 'package:quantumapp/core/domain/remote/currency_type_api_service.dart';
import 'package:quantumapp/core/domain/remote/customer_api_service.dart';
import 'package:quantumapp/core/domain/remote/district_api_service.dart';
import 'package:quantumapp/core/domain/services/connectivity_service.dart';


List<RepositoryProvider> pCoreDataServiceProviders(){
  return [
    RepositoryProvider<ConnectivityService>(create: (context) => ConnectivityServiceImpl()),
    RepositoryProvider<AuthRemoteService>(create: (context) => AuthRemoteServiceImpl()),
    RepositoryProvider<CityApiService>(create: (context) => CityApiServiceImpl()),
    RepositoryProvider<CountryApiService>(create: (context) => CountryApiServiceImpl()),
    RepositoryProvider<DistrictApiService>(create: (context) => DistrictApiServiceImpl()),
    RepositoryProvider<CustomerApiService>(create: (context) => CustomerApiServiceImpl()),
    RepositoryProvider<CurrencyTypeApiService>(create: (context) => CurrencyTypeApiServiceImpl()),
  ];
}