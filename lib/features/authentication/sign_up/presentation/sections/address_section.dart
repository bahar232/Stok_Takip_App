



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:quantumapp/core/features/get_info/bloc/get_info_bloc.dart';
import 'package:quantumapp/core/features/get_info/get_info_selectors.dart';
import 'package:quantumapp/features/authentication/sign_up/presentation/sections/component_section.dart';

import '../../domain/models/adress_step_data_model.dart';
import '../bloc/sign_up_bloc.dart';
import '../bloc/sign_up_event.dart';
import '../sign_up_page.dart';

extension SignInPageAddressExt on SignUpPage{

  Widget getAddressInfoSection(BuildContext context){
    return FormBuilder(
      key: addressFormKey,
      child: Column(
        children: [
          getFormTextField(
              controller: addressEditingController,
              label: "Adres"
          ),
          gGetInfoSelectCountry(),
          gGetInfoSelectCity(),
          gGetInfoSelectDistrict(),
          getButtonRow(context,onPressed: (){
            addressFormKey.currentState?.validate();
            if(addressFormKey.currentState?.isValid == true){
              final data = _getAddressData(context);
              if(data!=null){
                context.read<SignUpBloc>().add(SignUpEventNextUser(addressStepData: data));
              }
            }
          })
        ],
      ),
    );
  }

  AddressStepDataModel? _getAddressData(BuildContext context){

    final infoState = context.read<GetInfoBloc>().state;

    final country = infoState.selectedCountry;
    final city = infoState.selectedCity;
    final district = infoState.selectedDistrict;
    if(country == null || city == null || district == null) return null;

    return AddressStepDataModel(
      address: addressEditingController.text.trim(),
      country: country.name,
      city: city.name,
      district: district.name
    );
  }

}