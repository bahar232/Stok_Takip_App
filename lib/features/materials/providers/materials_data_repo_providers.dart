

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/features/materials/shared/data/repo/material_repo.dart';
import 'package:quantumapp/features/materials/shared/domain/repo/material_repo.dart';


List<RepositoryProvider> pMaterialsDataRepoProviders(){
  return [
    RepositoryProvider<MaterialRepo>(create: (context) => MaterialRepoImpl(
        apiService: context.read(),
        categoryApiService: context.read()
    )),
  ];
}