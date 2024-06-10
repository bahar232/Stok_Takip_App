

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/features/customers/shared/data/repo/customer_repo_impl.dart';
import 'package:quantumapp/features/customers/shared/domain/repo/customer_repo.dart';
import 'package:quantumapp/features/invoices/shared/data/repo/invoice_repo_impl.dart';
import 'package:quantumapp/features/invoices/shared/domain/repo/invoice_repo.dart';


List<RepositoryProvider> pInvoicesDataRepoProviders(){
  return [
    RepositoryProvider<InvoiceRepo>(create: (context) => InvoiceRepoImpl(
      customerApiService: context.read(),
      materialApiService:  context.read(),
      salesPersonApiService:  context.read(),
      invoiceApiService: context.read()
    )),
  ];
}