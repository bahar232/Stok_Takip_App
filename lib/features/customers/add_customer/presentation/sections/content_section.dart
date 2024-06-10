

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:quantumapp/core/domain/contants/k_validators.dart';
import 'package:quantumapp/core/features/get_info/get_info_selectors.dart';
import 'package:quantumapp/core/presentation/components/text_field/custom_form_text_field.dart';
import 'package:quantumapp/core/presentation/components/text_field/custom_text_field.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/add_customer_dialog_content.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/bloc/add_customer_bloc.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/bloc/add_customer_state.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/sections/select_category.dart';

extension AddCustomerDialogContentContentExt on AddCustomerDialogContent{

  CustomFormTextField _getFormTextField({
    required TextEditingController controller,
    required String label,
    int? minLines,
    EdgeInsets? padding,
    TextInputType? inputType,
    int? maxLength,
    String? error,
    List<FormFieldValidator<String>> validators = const[]
  }){
    return CustomFormTextField(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 11),
      controller: controller,
      label: label,
      minLines: minLines,
      keyBoardType: inputType,
      errorText: error,
      maxLength: maxLength,
      autoFocus: false,
      validators: [
        ...getSharedValidators(),
        ...validators
      ],
    );
  }

  List<FormFieldValidator<String>> getSharedValidators(){
    return [
      KValidate.required,
      KValidate.minRequire(1)
    ];
  }

  Widget getContent(){
    return FormBuilder(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _getFormTextField(
            controller: nameEditingController,
            label: "İsim",
          ),
          _getFormTextField(
            controller: codeEditingController,
            label: "Kodu",
          ),
          _getFormTextField(
            controller: tckNoEditingController,
            label: "TCK",
            inputType: TextInputType.number,
            maxLength: 11,
            validators: KValidate.numberAndLength(11)
          ),
          _getFormTextField(
            controller: relatedEditingController,
            label: "İlgili"
          ),
          getSelectAccountType(),
          _getFormTextField(
            controller: authorizedNameEditingController,
            label: "Yetkili isim"
          ),
          _getFormTextField(
            controller: authorizedSurnameEditingController,
            label: "Yetkili soyisim"
          ),
          gGetInfoSelectCountry(),
          gGetInfoSelectCity(),
          gGetInfoSelectDistrict(),
          gGetInfoSelectCurrency(),
          _getFormTextField(
            controller: addressEditingController,
            label: "Adres"
          ),
          _getFormTextField(
            controller: taxOfficeEditingController,
            label: "Vergi dairesi"
          ),
          _getFormTextField(
            controller: taxNoEditingController,
            label: "Vergi numarası",
            inputType: TextInputType.number,
            maxLength: 10,
            validators: KValidate.numberAndLength(10)
          ),
        ],
      ),
    );
  }

}