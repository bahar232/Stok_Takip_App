import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:quantumapp/core/features/get_info/bloc/get_info_bloc.dart';
import 'package:quantumapp/core/features/get_info/bloc/get_info_event.dart';
import 'package:quantumapp/core/features/get_info/models/get_info_init_params.dart';
import 'package:quantumapp/core/util/show_toast.dart';
import 'package:quantumapp/features/customers/add_customer/domain/model/add_customer_data.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/sections/component_section.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/sections/content_section.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/sections/header_section.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';

import 'bloc/add_customer_bloc.dart';
import 'bloc/add_customer_event.dart';
import 'bloc/add_customer_state.dart';

class AddCustomerDialogContent extends StatelessWidget {


  final String title;
  final String btnLabel;
  final void Function(AddCustomerData) onBtnClick;
  final void Function()? onSuccessResult;
  final Customer? customer;

  late final TextEditingController nameEditingController;
  late final TextEditingController codeEditingController;
  late final TextEditingController relatedEditingController;
  late final TextEditingController authorizedNameEditingController;
  late final TextEditingController authorizedSurnameEditingController;
  late final TextEditingController addressEditingController;
  late final TextEditingController taxOfficeEditingController;
  late final TextEditingController ckNoEditingController;
  late final TextEditingController taxNoEditingController;
  late final TextEditingController tckNoEditingController;

  final formKey = GlobalKey<FormBuilderState>();

  AddCustomerDialogContent({
    Key? key,
    required this.title,
    required this.btnLabel,
    required this.onBtnClick,
    this.onSuccessResult,
    this.customer
  }) : super(key: key){

    nameEditingController = TextEditingController(text: customer?.name);
    codeEditingController = TextEditingController(text: customer?.code);
    relatedEditingController = TextEditingController(text: customer?.related);
    authorizedNameEditingController = TextEditingController(text: customer?.authorizedName);
    authorizedSurnameEditingController = TextEditingController(text: customer?.authorizedSurname);
    addressEditingController = TextEditingController(text: customer?.address);
    taxOfficeEditingController = TextEditingController(text: customer?.taxOffice);
    tckNoEditingController = TextEditingController(text: customer?.tckNo);
    taxNoEditingController = TextEditingController(text: customer?.taxNo);
  }

  @override
  Widget build(BuildContext context){

    context.read<GetInfoBloc>().add(GetInfoEventCheckLoadData(
      initParams: GetInfoInitParams(
        country: customer?.country,
        city: customer?.city,
        district: customer?.district,
        currencyUnitId: customer?.currencyUnitId
      )
    ));

    return getListeners(
      child: DraggableScrollableSheet(
          initialChildSize: 0.99,
          minChildSize: 0.4,
          maxChildSize: 1.0,
          expand: false,
          builder: (context, controller){

            return Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    getHeader(context),
                    Expanded(
                      child: BlocBuilder<AddCustomerBloc,AddCustomerState>(
                        builder: (context, state){
                          if(state.isLoading){
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return SingleChildScrollView(
                            controller: controller,
                            child: getContent(),
                          );
                        },
                      ),
                    ),
                    getButton()
                  ],
                ),
              ),
            );
          }
      ),
    );
  }

  Widget getButton(){
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: BlocBuilder<AddCustomerBloc,AddCustomerState>(
        builder: (context, state){
          return FilledButton(
            onPressed: (){
              formKey.currentState?.validate();
              if(formKey.currentState?.isValid == true){
                onBtnClick(getCustomerData(context,state));
              }
            },
            child: Text(btnLabel),
          );
        },
      ),
    );
  }


  AddCustomerData getCustomerData(BuildContext context,AddCustomerState state){

    final infoState = context.read<GetInfoBloc>().state;

    return AddCustomerData(
        code: codeEditingController.text,
        related: relatedEditingController.text,
        selectedAccountType: state.selectedAccountType,
        authorizedName: authorizedNameEditingController.text,
        authorizedSurname: authorizedSurnameEditingController.text,
        selectedCity: infoState.selectedCity,
        selectedCountry: infoState.selectedCountry,
        selectedDistrict: infoState.selectedDistrict,
        address: addressEditingController.text,
        taxOffice: taxOfficeEditingController.text,
        tckNo: tckNoEditingController.text,
        taxNo: taxNoEditingController.text,
        selectedCurrency: infoState.selectedCurrency,
        id: customer?.id,
        name: nameEditingController.text
    );
  }

}



