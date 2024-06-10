

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
import 'package:quantumapp/features/invoices/shared/data/remote/invoice_api_service_impl.dart';
import 'package:quantumapp/features/invoices/shared/data/remote/sales_person_api_service_impl.dart';
import 'package:quantumapp/features/invoices/shared/domain/remote/invoice_api_service.dart';
import 'package:quantumapp/features/invoices/shared/domain/remote/sales_person_api_service.dart';


List<RepositoryProvider> pInvoicesServiceRepoProviders(){
  return [
    RepositoryProvider<SalesPersonApiService>(create: (context) => SalesPersonApiServiceImpl()),
    RepositoryProvider<InvoiceApiService>(create: (context) => InvoiceApiServiceImpl()),
  ];
}