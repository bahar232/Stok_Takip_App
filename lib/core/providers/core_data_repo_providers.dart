

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/data/repo/get_info_repo_impl.dart';
import 'package:quantumapp/core/domain/repo/get_info_repo.dart';

List<RepositoryProvider> pCoreDataRepoProviders(){
  return [
    RepositoryProvider<GetInfoRepo>(create: (context) => GetInfoRepoImpl(
      currencyTypeApiService: context.read(),
      districtApiService: context.read(),
      countryApiService: context.read(),
      cityApiService: context.read()
    ))

  ];
}