
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/data/manager/auth_manager_impl.dart';
import 'package:quantumapp/core/domain/extensions/resource_extension.dart';
import 'package:quantumapp/core/domain/model/login_model/login_model.dart';
import 'package:quantumapp/core/domain/preferences/app_preferences.dart';
import 'package:quantumapp/core/domain/services/connectivity_service.dart';
import 'package:quantumapp/features/authentication/login/presentation/bloc/login_event.dart';
import 'package:quantumapp/features/authentication/login/presentation/bloc/login_state.dart';

class LoginBloc extends Bloc<ILoginEvent, LoginState>{

  late final ConnectivityService _connectivityService;

  LoginBloc({
    required ConnectivityService connectivityService
  }): super(LoginState.init()){

    _connectivityService = connectivityService;

    on<LoginEventClearMessage>(_onClearMessage, transformer: restartable());
    on<LoginEventLogin>(_onLogin, transformer: restartable());
  }


  void _onLogin(LoginEventLogin event, Emitter<LoginState> emit) async{
    if(!await _connectivityService.checkHasConnected){
      return emit(state.copyWith(
          message: _getNetworkError()
      ));
    }
    if(state.isLoading) return;
    emit(state.copyWith(
        isLoading: true,
    ));

    final password = event.password.trim();
    final username = event.username.trim();

    final loginModel = LoginModel(userName: username, password: password);
    final response = await AuthManager.instance.login(loginModel);

    response.handle(
      onSuccess: (user){
        emit(state.copyWith(
           isLoading: false,
           message: "Successfully logged in"
        ));
      },
      onError: (error){
        emit(state.copyWith(
          message: error,
          isLoading: false
        ));
      }
    );
  }

  String? _getNetworkError(){
    return "Internet bağlantısı bulunmamaktadır";
  }

  void _onClearMessage(LoginEventClearMessage event, Emitter<LoginState> emit){
    emit(state.copyWith(message: null));
  }
}