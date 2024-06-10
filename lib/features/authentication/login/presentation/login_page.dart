import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:quantumapp/core/domain/contants/k_image.dart';
import 'package:quantumapp/core/features/app_auth_handler/auth_navigate_listener.dart';
import 'package:quantumapp/features/authentication/login/presentation/sections/listener_section.dart';
import 'package:quantumapp/features/authentication/login/presentation/sections/login_buttons_section.dart';
import 'package:quantumapp/features/authentication/login/presentation/sections/login_fields_section.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController passwordController = TextEditingController(text: "");
  final TextEditingController emailController = TextEditingController(text: "");

  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {

    return AuthNavigateListener(
      child: getListeners(
        context: context,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 50),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        KImage.quantumImg,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Column(
                      children: [
                        getTextFields(context),
                        getLoginButtons(context)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}




