

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/data/remote/city_api_service_impl.dart';
import 'package:quantumapp/core/data/remote/country_api_service_impl.dart';
import 'package:quantumapp/core/data/remote/currency_type_api_service_impl.dart';
import 'package:quantumapp/core/data/remote/customer_api_service_impl.dart';
import 'package:quantumapp/core/data/remote/district_api_service_impl.dart';
import 'package:quantumapp/core/domain/remote/city_api_service.dart';
import 'package:quantumapp/core/domain/remote/country_api_service.dart';
import 'package:quantumapp/core/domain/remote/currency_type_api_service.dart';
import 'package:quantumapp/core/domain/remote/customer_api_service.dart';
import 'package:quantumapp/core/domain/remote/district_api_service.dart';
import 'package:quantumapp/features/customers/shared/data/remote/customer_movement_api_service_impl.dart';
import 'package:quantumapp/features/customers/shared/domain/remote/customer_movement_api_service.dart';


List<RepositoryProvider> pCustomersServiceRepoProviders(){
  return [
    RepositoryProvider<CustomerMovementApiService>(create: (context) => CustomerMovementApiServiceImpl())
  ];
}