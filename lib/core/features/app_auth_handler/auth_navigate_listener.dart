import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/presentation/dialogs/show_custom_alert_dialog.dart';
import 'package:quantumapp/features/app/routers/app_routers.dart';
import 'package:quantumapp/features/app/routers/authentication_routers.dart';
import 'bloc/app_auth_handler_bloc.dart';
import 'bloc/app_auth_handler_event.dart';
import 'bloc/app_auth_handler_state.dart';

class AuthNavigateListener extends StatelessWidget {

  final Widget child;

  const AuthNavigateListener({Key? key,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final bloc = context.read<AppAuthHandlerBloc>();

    return MultiBlocListener(
        listeners: [
          BlocListener<AppAuthHandlerBloc,AppAuthHandlerState>(
            listenWhen: (prevState, nextState){
              print("NavigateTo LoginState: ${prevState.navigateToLogin} :${nextState.navigateToLogin}");
              return prevState.navigateToLogin != nextState.navigateToLogin;
            },
            listener: (context, state){
              if(state.navigateToLogin){
                bloc.add(AppAuthEventClearNavigateToLogin());
                print("NavigateTo Login");
                LoginRoute().go(context);
              }
            },
          ),
          BlocListener<AppAuthHandlerBloc,AppAuthHandlerState>(
            listenWhen: (prevState, nextState){
              return prevState.navigateToHome != nextState.navigateToHome;
            },
            listener: (context, state){
              bloc.add(AppAuthEventClearNavigateToHome());
              HomeRoute().go(context);
            },
          ),
          BlocListener<AppAuthHandlerBloc,AppAuthHandlerState>(
            listenWhen: (prevState, nextState){
              return prevState.showPopUpForExpiredSession != nextState.showPopUpForExpiredSession;
            },
            listener: (context, state){
              if(state.showPopUpForExpiredSession){
                showCustomAlertDialog(context,
                  title: "Oturumunuzun süresi doldu",
                  showApproveBtn: false,
                  negativeLabel: "Giriş sayfasına git",
                  dismissible: false,
                  useRootNavigator: true,
                  btnCancelled: (){
                    context.read<AppAuthHandlerBloc>().add(AppAuthEventClearSessionDia(navigateToLogin: true));
                  }
                );
              }
            },
          )
        ],
      child: child,
    );
  }
}
