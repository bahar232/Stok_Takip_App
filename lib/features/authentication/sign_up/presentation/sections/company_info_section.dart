
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/domain/contants/k_validators.dart';
import 'package:quantumapp/core/features/get_info/bloc/get_info_bloc.dart';
import 'package:quantumapp/core/features/get_info/get_info_selectors.dart';
import 'package:quantumapp/core/presentation/components/select_category_item/select_form_category_item.dart';
import 'package:quantumapp/core/presentation/dialogs/show_select_cat_item_dia.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:quantumapp/features/app/routers/authentication_routers.dart';
import 'package:quantumapp/features/authentication/sign_up/presentation/bloc/sign_up_bloc.dart';
import 'package:quantumapp/features/authentication/sign_up/presentation/bloc/sign_up_event.dart';
import 'package:quantumapp/features/authentication/sign_up/presentation/sections/component_section.dart';

import '../../domain/enums/company_type_enum.dart';
import '../../domain/models/company_step_data_model.dart';
import '../bloc/sign_up_state.dart';
import '../sign_up_page.dart';

extension SignInPageCompanyInfoExt on SignUpPage{

  Widget getCompanyInfoSection(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _getTextControllerContent(context),
          _getButtons(context)
        ],
      ),
    );
  }

  Widget _getButtons(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(top: 13,bottom: 5),
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                LoginRoute().go(context);
              },
              child: const Text("Giriş sayfasına git")
            ),
          ),
          Expanded(
            child: getNextButton(context,onPressed: (){
              companyFormKey.currentState?.validate();
              if(companyFormKey.currentState?.isValid == true){
                final companyData = _getCompanyData(context);
                if(companyData!=null){
                  context.read<SignUpBloc>().add(SignUpEventNextAddress(companyStepData: companyData));
                }
              }
            }),
          ),
        ],
      ),
    );
  }

  Widget _getTextControllerContent(BuildContext context){
    return FormBuilder(
      key: companyFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getFormTextField(
            controller: companyNameEditingController,
            label: "Şirket İsmi",
          ),
          getFormTextField(
            controller: authorizedNameEditingController,
            label: "Yetkili Adı",
          ),
          getFormTextField(
            controller: authorizedSurnameEditingController,
            label: "Yetkili Soyadı",
          ),

          getFormTextField(
              controller: authorizedTckNoEditingController,
              label: "TCK",
              inputType: TextInputType.number,
              validators: KValidate.numberAndLength(11),
              maxLength: 11
          ),
          BlocSelector<SignUpBloc,SignUpState, CompanyTypeEnum>(
            selector: (state) => state.selectedCompanyType,
            builder: (context, selectedCompanyType){
              return SelectFormCategoryItem(
                placeHolder: "Şirket Türü Seç",
                isEnabled: true,
                title: selectedCompanyType.title,
                validators: getSharedValidators(),
                onTap: (){
                  showSelectCatItemDia(context,
                    items: CompanyTypeEnum.values,
                    title: "Şirket Türü Seç",
                    onSelected: (selected){
                      context.read<SignUpBloc>()
                          .add(SignUpEventSetCompanyType(companyTypeEnum: selected));
                    }
                  );
                },
              );
            },
          ),
          gGetInfoSelectCurrency(),
          getFormTextField(
              controller: taxOfficeEditingController,
              label: "Vergi dairesi"
          ),
          getFormTextField(
              controller: taxNoEditingController,
              label: "Vergi numarası",
              inputType: TextInputType.number,
              validators: KValidate.numberAndLength(10),
              maxLength: 10
          ),
        ],
      ),
    );
  }

  CompanyStepDataModel? _getCompanyData(BuildContext context){
    
    final companyTypeEnum = context.read<SignUpBloc>().state.selectedCompanyType;
    final currencyTypeModel = context.read<GetInfoBloc>().state.selectedCurrency;
    if(currencyTypeModel == null) return null;
    
    return CompanyStepDataModel(
      companyName: companyNameEditingController.text.trim(),
      authorizedName: authorizedNameEditingController.text.trim(),
      authorizedSurname: authorizedSurnameEditingController.text.trim(),
      authorizedTC: authorizedTckNoEditingController.text.trim(),
      taxNo: taxNoEditingController.text.trim(),
      taxOffice: taxOfficeEditingController.text.trim(),
      companyTypeEnum: companyTypeEnum,
      currencyTypeModel: currencyTypeModel
    );
  }

}