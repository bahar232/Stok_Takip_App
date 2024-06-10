
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/features/materials/shared/data/remote/material_api_service_impl.dart';
import 'package:quantumapp/features/materials/shared/data/remote/material_category_api_service_impl.dart';
import 'package:quantumapp/features/materials/shared/domain/remote/material_api_service.dart';
import 'package:quantumapp/features/materials/shared/domain/repo/material_category_api_service.dart';


List<RepositoryProvider> pMaterialsServiceRepoProviders(){
  return [
    RepositoryProvider<MaterialApiService>(create: (context) => MaterialApiServiceImpl()),
    RepositoryProvider<MaterialCategoryApiService>(create: (context) => MaterialCategoryApiServiceImpl()),

  ];
}