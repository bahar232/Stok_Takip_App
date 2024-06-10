

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:quantumapp/core/domain/contants/k_validators.dart';
import 'package:quantumapp/core/presentation/components/text_field/custom_form_text_field.dart';
import 'package:quantumapp/core/presentation/components/text_field/custom_text_field.dart';
import 'package:quantumapp/features/materials/add_material/presentation/add_customer_dialog_content.dart';
import 'package:quantumapp/features/materials/add_material/presentation/bloc/add_material_bloc.dart';
import 'package:quantumapp/features/materials/add_material/presentation/bloc/add_material_state.dart';
import 'package:quantumapp/features/materials/add_material/presentation/sections/select_category.dart';
import 'package:validatorless/validatorless.dart';

extension AddMaterialDialogContentContentExt on AddMaterialDialogContent{

  CustomFormTextField _getFormTextField({
    required TextEditingController controller,
    required String label,
    int? minLines,
    EdgeInsets? padding,
    TextInputType? inputType,
    int? maxLength,
    String? error,
    List<FormFieldValidator<String>> validators = const []
  }){
    return CustomFormTextField(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 11),
      label: label,
      controller: controller,
      minLines: minLines,
      keyBoardType: inputType,
      errorText: error,
      maxLength: maxLength,
      autoFocus: false,
      autoValidateMode: AutovalidateMode.onUserInteraction,
      validators: [
        ...validators,
        ...getSharedValidators(),
      ],
    );
  }

  List<FormFieldValidator<String>> getSharedValidators(){
    return [
      KValidate.required,
      KValidate.minRequire(1)
    ];
  }

  List<FormFieldValidator<String>> getNumberValidators(){
    return [
      KValidate.onlyNumbers(),
      KValidate.numberMin(0)
    ];
  }

  Widget getContent(){
    return FormBuilder(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getImage(),
          _getFormTextField(
              controller: nameEditingController,
              label: "İsim",
          ),
          _getFormTextField(
              controller: codeEditingController,
              label: "Kodu",
          ),
          getSelectType(null),
          getSelectCategory(null),
          _getFormTextField(
              controller: vatEditingController,
              label: "Kdv",
              inputType: TextInputType.number,
              validators: getNumberValidators()
          ),
          _getFormTextField(
              controller: purchaseVatEditingController,
              label: "Alış Kdv",
              inputType: TextInputType.number,
              validators: getNumberValidators()
          ),
          _getFormTextField(
              controller: sellingPriceEditingController,
              label: "Satış Fiyat",
              inputType: TextInputType.number,
              validators: getNumberValidators()
          ),
          _getFormTextField(
              controller: purchasePriceEditingController,
              label: "Alış Fiyat",
              inputType: TextInputType.number,
              validators: getNumberValidators()
          ),
        ],
      ),
    );
  }

}