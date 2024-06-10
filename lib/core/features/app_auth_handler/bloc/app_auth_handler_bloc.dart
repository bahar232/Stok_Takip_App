
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/data/manager/auth_manager_impl.dart';
import 'package:quantumapp/core/domain/model/auth/auth.dart';
import 'package:quantumapp/core/domain/model/auth_status/auth_status.dart';
import 'package:rxdart/rxdart.dart';

import 'app_auth_handler_event.dart';
import 'app_auth_handler_state.dart';

class AppAuthHandlerBloc extends Bloc<IAppAuthHandlerEvent, AppAuthHandlerState>{

  final AuthManager _authManager = AuthManager.instance;

  AppAuthHandlerBloc(): super(AppAuthHandlerState.init()){

    on<AppAuthEventClearNavigateToHome>(_onClearNavigateToHome, transformer: restartable());
    on<AppAuthEventClearNavigateToLogin>(_onClearNavigateToLogin, transformer: restartable());
    on<AppAuthEventClearSessionDia>(_onClearSessionDia, transformer: restartable());

    on<AppAuthEventControlListenChanges>(_onListenChanges, transformer: restartable());

    add(AppAuthEventControlListenChanges());
  }

  void _onListenChanges(AppAuthEventControlListenChanges event, Emitter<AppAuthHandlerState> emit)async{

    final auth = _authManager.currentAuth;
    emit(_getNewAuthState(state, AuthStatus.init().copyWith(auth: auth)));

    final streamData = _authManager.authCombinedStatus;
    await emit.forEach<AuthStatus>(streamData, onData: (status){
      final newState = _getNewAuthState(state,status);
      return newState;
    });
  }

  AppAuthHandlerState _getNewAuthState(AppAuthHandlerState state, AuthStatus status){
    final auth = status.auth;
    final navigateToHome = auth != null && status.statusEnum.isLoggedIn; // if not logged in yet
    final navigateToLogin = auth == null && status.statusEnum.isLoggedOut;
    final showPopUpForExpiredSession = auth == null && status.statusEnum.isInvalidated;

    return state.copyWith(
      navigateToHome: navigateToHome,
      navigateToLogin: navigateToLogin,
      showPopUpForExpiredSession: showPopUpForExpiredSession,
    );
  }


  void _onClearSessionDia(AppAuthEventClearSessionDia event, Emitter<AppAuthHandlerState> emit){
    emit(state.copyWith(showPopUpForExpiredSession: false, navigateToLogin: event.navigateToLogin));
  }

  void _onClearNavigateToHome(AppAuthEventClearNavigateToHome event, Emitter<AppAuthHandlerState> emit){
    emit(state.copyWith(navigateToHome: false));
  }

  void _onClearNavigateToLogin(AppAuthEventClearNavigateToLogin event, Emitter<AppAuthHandlerState> emit){
    emit(state.copyWith(navigateToLogin: false));
  }
}