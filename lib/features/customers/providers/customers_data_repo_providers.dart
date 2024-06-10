

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/features/customers/shared/data/repo/customer_repo_impl.dart';
import 'package:quantumapp/features/customers/shared/domain/repo/customer_repo.dart';


List<RepositoryProvider> pCustomersDataRepoProviders(){
  return [
    RepositoryProvider<CustomerRepo>(create: (context) => CustomerRepoImpl(
      customerMovementApiService: context.read(),
      customerApiService: context.read(),
    )),
  ];
}