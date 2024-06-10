
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/features/app/routers/app_routers.dart';
import 'package:quantumapp/features/authentication/login/presentation/bloc/login_bloc.dart';
import 'package:quantumapp/features/authentication/login/presentation/bloc/login_event.dart';
import 'package:quantumapp/features/authentication/login/presentation/login_page.dart';
import 'package:flutter/material.dart';

extension LoginPageButtonsExt on LoginPage{

  Widget getLoginButtons(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3),
          child: FilledButton(
            onPressed: (){
              context.read<LoginBloc>().add(LoginEventLogin(
                  username: emailController.text.trim(),
                  password: passwordController.text.trim()
              ));
            },
            child: const Text("Giriş Yap"),
          ),
        ),
        const SizedBox(height: 16,),
        const Row(
          children: [
            Expanded(
                child: Divider()
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 7),
                child: Text("ya da")
            ),
            Expanded(
                child: Divider()
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 13),
          child: FilledButton.tonal(
              onPressed: (){
                SignInRoute().push(context);
              },
              child: const Text("Kaydol")
          ),
        ),

      ],
    );
  }
}