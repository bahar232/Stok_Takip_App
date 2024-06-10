
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/util/show_toast.dart';
import 'package:quantumapp/features/app/routers/app_routers.dart';
import 'package:quantumapp/features/authentication/login/presentation/bloc/login_bloc.dart';
import 'package:quantumapp/features/authentication/login/presentation/bloc/login_event.dart';
import 'package:quantumapp/features/authentication/login/presentation/bloc/login_state.dart';
import 'package:quantumapp/features/authentication/login/presentation/login_page.dart';

extension LoginPageListenersExt on LoginPage{

  Widget getListeners({
    required BuildContext context,
    required Widget child
  }){
    final bloc = context.read<LoginBloc>();

    return MultiBlocListener(
        listeners: [
          BlocListener<LoginBloc,LoginState>(
              listener: (context, state){
                final message = state.message;
                if(message!=null){
                  ToastUtils.showLongToast(message);
                  bloc.add(LoginEventClearMessage());
                }
              }
          ),
        ],
      child: child,
    );
  }

}