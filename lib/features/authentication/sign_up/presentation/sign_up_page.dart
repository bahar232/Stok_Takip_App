

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/features/get_info/bloc/get_info_bloc.dart';
import 'package:quantumapp/core/features/get_info/bloc/get_info_event.dart';
import 'package:quantumapp/core/features/get_info/get_info_listener.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:quantumapp/features/authentication/sign_up/presentation/bloc/sign_up_event.dart';
import 'package:quantumapp/features/authentication/sign_up/presentation/sections/address_section.dart';
import 'package:quantumapp/features/authentication/sign_up/presentation/sections/company_info_section.dart';
import 'package:quantumapp/features/authentication/sign_up/presentation/sections/component_section.dart';
import 'package:quantumapp/features/authentication/sign_up/presentation/sections/user_info_section.dart';
import 'bloc/sign_up_bloc.dart';
import 'bloc/sign_up_state.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final companyFormKey = GlobalKey<FormBuilderState>();
  final addressFormKey = GlobalKey<FormBuilderState>();
  final userFormKey = GlobalKey<FormBuilderState>();

  final pageController = PageController();

  final companyNameEditingController = TextEditingController();
  final authorizedNameEditingController = TextEditingController();
  final authorizedSurnameEditingController = TextEditingController();
  final authorizedTckNoEditingController = TextEditingController();
  final taxOfficeEditingController = TextEditingController();
  final taxNoEditingController = TextEditingController();

  final addressEditingController = TextEditingController();

  final userNameEditingController = TextEditingController();
  final userNameAndSurnameEditingController = TextEditingController();
  final userTckNoEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final rePasswordEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    
    context.read<GetInfoBloc>().add(GetInfoEventCheckLoadData());
    context.read<SignUpBloc>().add(SignUpEventLoadData());
    
    return getListener(
      child: Scaffold(
        body: SafeArea(
          child: GetInfoConsumer(
            child: BlocBuilder<SignUpBloc,SignUpState>(
              builder: (context, state){
                final stepsState = state.stepsState;
                return Stepper(
                  physics: const ClampingScrollPhysics(),
                  type: StepperType.horizontal,
                  controlsBuilder: (context, controlsBuilder){
                    return const Row();
                  },
                  currentStep: state.currentStepIndex,
                  steps: [
                    Step(
                      title: Text(stepsState.companyStep.title),
                      content: getCompanyInfoSection(context),
                      state: stepsState.companyStep.state,
                      isActive: stepsState.companyStep.isCurrent,
                    ),
                    Step(
                      title: Text(stepsState.addressStep.title),
                      content: getAddressInfoSection(context),
                      isActive: stepsState.addressStep.isCurrent,
                      state: stepsState.addressStep.state
                    ),
                    Step(
                      title: Text(stepsState.userStep.title),
                      content: getUserInfoSection(context),
                      state: stepsState.userStep.state,
                      isActive: stepsState.userStep.isCurrent
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }



}
