

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/presentation/components/text_field/custom_form_text_field.dart';
import 'package:quantumapp/core/presentation/components/text_field/custom_text_field.dart';
import 'package:quantumapp/core/util/show_toast.dart';
import 'package:quantumapp/features/authentication/sign_up/presentation/bloc/sign_up_bloc.dart';
import 'package:quantumapp/features/authentication/sign_up/presentation/bloc/sign_up_state.dart';
import 'package:quantumapp/features/authentication/sign_up/presentation/sign_up_page.dart';
import 'package:validatorless/validatorless.dart';

import '../bloc/sign_up_event.dart';

extension SignInPageComponentsExt on SignUpPage{


  CustomTextField getTextField({
    required TextEditingController controller,
    required String label,
    int? minLines,
    EdgeInsets? padding,
    TextInputType? inputType,
    int? maxLength,
    String? error
  }){
    return CustomTextField(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 11),
      controller: controller,
      label: label,
      minLines: minLines,
      keyBoardType: inputType,
      errorText: error,
      maxLength: maxLength,
      autoFocus: false,

    );
  }

  Widget getFormTextField({
    required TextEditingController controller,
    required String label,
    int? minLines,
    EdgeInsets? padding,
    TextInputType? inputType,
    int? maxLength,
    String? error,
    bool isPassword = false,
    List<String? Function(String?)> validators = const []
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
      name: label,
      isPassword: isPassword,
      autoValidateMode: AutovalidateMode.onUserInteraction,
      validators: [
        ...getSharedValidators(),
        ...validators
      ],
    );
  }

  List<String? Function(String?)> getSharedValidators(){
    return [
      Validatorless.required("bu alan boş geçilemez"),
      Validatorless.min(1, "en az bir karekter olması gerekiyor"),
    ];
  }


  Widget getNextButton(BuildContext context,{
    required void Function() onPressed,
    String btnText = "Devam et"
  }){
    return FilledButton(
      onPressed: onPressed,
      child: Text(btnText)
    );
  }

  Widget getPrevButton(BuildContext context){
    return TextButton(
      onPressed: (){
        context.read<SignUpBloc>().add(SignUpEventPrevStep());
      },
      child: const Text("Geri")
    );
  }

  Widget getButtonRow(BuildContext context,{
    required void Function() onPressed,
    String btnText = "Devam et"
  }){
    return Padding(
      padding: const EdgeInsets.only(top: 13,bottom: 5),
      child: Row(
        children: [
          Expanded(
            child: getPrevButton(context),
          ),
          Expanded(
            child: getNextButton(context,btnText: btnText,onPressed: onPressed),
          ),
        ],
      ),
    );
  }


  Widget getListener({required Widget child}){
    return BlocListener<SignUpBloc,SignUpState>(
      listenWhen: (prevState, nextState){
        return prevState.message != nextState.message;
      },
      listener: (context, state){
        final message = state.message;
        if(message!=null){
          ToastUtils.showLongToast(message);
          context.read<SignUpBloc>()
              .add(SignUpEventClearMessage());
        }
      },
      child: child,
    );
  }

}