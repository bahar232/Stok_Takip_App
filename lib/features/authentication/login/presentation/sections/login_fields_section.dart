
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:quantumapp/core/domain/contants/k_validators.dart';
import 'package:quantumapp/core/presentation/components/text_field/custom_form_text_field.dart';
import 'package:quantumapp/core/presentation/components/text_field/custom_text_field.dart';
import 'package:quantumapp/features/authentication/login/presentation/bloc/login_bloc.dart';
import 'package:quantumapp/features/authentication/login/presentation/bloc/login_state.dart';
import 'package:quantumapp/features/authentication/login/presentation/login_page.dart';
import 'package:flutter/material.dart';

extension LoginPageFieldsExt on LoginPage{

  Widget getTextFields(BuildContext context){

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: FormBuilder(
        key: formKey,
        child: Column(
          children: [
            CustomFormTextField(
              controller: emailController,
              label: "Kullanıcı Adı",
              inputAction: TextInputAction.next,
              validators: [KValidate.required,KValidate.minRequire(1)],
            ),
            const SizedBox(height: 8,),
            CustomFormTextField(
              controller: passwordController,
              label: "Şifre",
              isPassword: true,
              validators: [KValidate.required,KValidate.minRequire(1)],
              inputAction: TextInputAction.done,
            )
          ],
        ),
      ),
    );
  }
}