import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/data/preferences/app_preferences_impl.dart';
import 'package:quantumapp/core/features/app_auth_handler/bloc/app_auth_handler_bloc.dart';
import 'package:quantumapp/core/features/get_info/bloc/get_info_bloc.dart';
import 'package:quantumapp/core/providers/core_data_repo_providers.dart';
import 'package:quantumapp/core/providers/core_data_service_providers.dart';
import 'package:quantumapp/core/domain/preferences/app_preferences.dart';
import 'package:quantumapp/features/authentication/login/presentation/bloc/login_bloc.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/bloc/add_customer_bloc.dart';
import 'package:quantumapp/features/customers/customer_detail/presentation/bloc/customer_detail_bloc.dart';
import 'package:quantumapp/features/customers/customer_movements/bloc/customer_movements_bloc.dart';
import 'package:quantumapp/features/customers/providers/customers_data_repo_providers.dart';
import 'package:quantumapp/features/customers/providers/customers_data_service_providers.dart';
import 'package:quantumapp/features/customers/providers/customers_domain_use_cases_providers.dart';
import 'package:quantumapp/features/customers/show_customers/presentation/bloc/customer_bloc.dart';
import 'package:quantumapp/features/invoices/add_invoice/presentation/bloc/add_invoice_bloc.dart';
import 'package:quantumapp/features/invoices/detail_invoice/bloc/detail_invoice_bloc.dart';
import 'package:quantumapp/features/invoices/providers/invoices_data_repo_providers.dart';
import 'package:quantumapp/features/invoices/providers/invoices_data_service_providers.dart';
import 'package:quantumapp/features/invoices/show_invoices/presentation/bloc/show_invoices_bloc.dart';
import 'package:quantumapp/features/materials/add_material/presentation/bloc/add_material_bloc.dart';
import 'package:quantumapp/features/materials/providers/materials_data_repo_providers.dart';
import 'package:quantumapp/features/materials/providers/materials_data_service_providers.dart';
import 'package:quantumapp/features/materials/providers/materials_domain_usecases_providers.dart';
import 'package:quantumapp/features/materials/show_materials/presentation/bloc/material_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../authentication/sign_up/presentation/bloc/sign_up_bloc.dart';

class MyAppProviders extends StatelessWidget {

  final SharedPreferences sharedPreferences;
  final Widget child;

  const MyAppProviders({
    Key? key,
    required this.sharedPreferences,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        RepositoryProvider<AppPreferences>(create: (context) => AppPreferencesImpl(
            preferences: sharedPreferences
        )),
        ...pCoreDataServiceProviders(),
        ...pCoreDataRepoProviders(),
        ...pCustomersServiceRepoProviders(),
        ...pCustomersDataRepoProviders(),
        ...pCustomersDomainUseCasesProviders(),
        ...pMaterialsServiceRepoProviders(),
        ...pMaterialsDataRepoProviders(),
        ...pMaterialsDomainUseCasesProviders(),
        ...pInvoicesServiceRepoProviders(),
        ...pInvoicesDataRepoProviders(),
      ],
      child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => AppAuthHandlerBloc()),
            BlocProvider(create: (context) => LoginBloc(
              connectivityService: context.read(),
            ),),
            BlocProvider(create: (context) => DetailInvoiceBloc(
              invoiceRepo: context.read(),
              connectivityService: context.read()
            ),),
            BlocProvider(create: (context) => CustomerMovementsBloc(
                customerRepo: context.read(),
                connectivityService: context.read()
            ),),
            BlocProvider(create: (context) => ShowInvoicesBloc(
              invoiceRepo: context.read(),
              connectivityService: context.read()
            ),),
            BlocProvider(create: (context) => SignUpBloc(
              connectivityService: context.read(),
            )),
            BlocProvider(create: (context) => GetInfoBloc(
              getInfoRepo: context.read(),
              connectivityService: context.read(),
            )),
            BlocProvider(create: (context) => CustomerBloc(
              customerRepo: context.read(),
              connectivityService: context.read()
            )),
            BlocProvider(create: (context) => AddInvoiceBloc(
              addInvoiceRepo: context.read(),
              connectivityService: context.read()
            )),
            BlocProvider(create: (context) => CustomerDetailBloc(
                customerRepo: context.read(),
                connectivityService: context.read()
            )),
            BlocProvider(create: (context) => AddCustomerBloc(
                customerRepo: context.read(),
                connectivityService: context.read()
            )),
            BlocProvider(create: (context) => AddMaterialBloc(
                materialRepo: context.read(),
                connectivityService: context.read()
            )),
            BlocProvider(create: (context) => MaterialBloc(
                materialRepo: context.read(),
              connectivityService: context.read()
            )),
          ],
          child: child
      ),
    );
  }
}
