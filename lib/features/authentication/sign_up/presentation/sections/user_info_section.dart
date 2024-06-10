

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:quantumapp/core/domain/contants/k_validators.dart';
import 'package:quantumapp/features/authentication/sign_up/presentation/sections/component_section.dart';
import 'package:validatorless/validatorless.dart';

import '../../domain/models/user_step_data_model.dart';
import '../bloc/sign_up_bloc.dart';
import '../bloc/sign_up_event.dart';
import '../sign_up_page.dart';

extension SignInPageUserInfoExt on SignUpPage{

  Widget getUserInfoSection(BuildContext context){
    return FormBuilder(
      key: userFormKey,
      child: Column(
        children: [
          getFormTextField(
              controller: userNameEditingController,
              label: "Kullanici Adi"
          ),
          getFormTextField(
              controller: userNameAndSurnameEditingController,
              label: "Kullanici Adi soyadi"
          ),
          getFormTextField(
              controller: userTckNoEditingController,
              label: "Kullanıcı TCK",
              inputType: TextInputType.number,
              maxLength: 11,
              validators: KValidate.numberAndLength(11)
          ),
          getFormTextField(
            controller: passwordEditingController,
            label: "Şifre",
            isPassword: true
          ),
          getFormTextField(
            controller: rePasswordEditingController,
            label: "Şifre Tekrar",
            isPassword: true,
            validators: [
              Validatorless.compare(passwordEditingController, "sifre alanları eşleşmiyor")
            ]
          ),
          getButtonRow(context,
              btnText: "Tamamla",
              onPressed: (){
                userFormKey.currentState?.validate();
                if(userFormKey.currentState?.isValid == true){
                  final data = _getUserData(context);
                  context.read<SignUpBloc>().add(SignUpEventComplete(userStepData: data));
                }
              },
          )
        ],
      ),
    );
  }

  UserStepDataModel _getUserData(BuildContext context){
    return UserStepDataModel(
      userName: userNameEditingController.text.trim(),
      userTC: userTckNoEditingController.text.trim(),
      password: passwordEditingController.text.trim(),
      userNameAndSurname: userNameAndSurnameEditingController.text.trim()
    );
  }

}