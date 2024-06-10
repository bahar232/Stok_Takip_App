


import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/data/manager/auth_manager_impl.dart';
import 'package:quantumapp/core/domain/extensions/resource_extension.dart';
import 'package:quantumapp/core/domain/services/connectivity_service.dart';
import '../../data/mapper/sign_up_model_mapper.dart';
import 'sign_up_event.dart';
import 'sign_up_state.dart';

class SignUpBloc extends Bloc<ISignUpEvent,SignUpState>{

  final AuthManager _authManager = AuthManager.instance;

  late final ConnectivityService _connectivityService;

  SignUpBloc({
    required ConnectivityService connectivityService
  }): super(SignUpState.init()){

    _connectivityService = connectivityService;

    on<SignUpEventLoadData>(_onLoadData,transformer: restartable());

    on<SignUpEventNextStep>(_onNextStep,transformer: restartable());
    on<SignUpEventPrevStep>(_onPrevStep,transformer: restartable());
    on<SignUpEventNextAddress>(_onNextAddress,transformer: restartable());
    on<SignUpEventNextUser>(_onNextUser,transformer: restartable());
    on<SignUpEventComplete>(_onComplete,transformer: restartable());

    on<SignUpEventSetCompanyType>(_onSetCompanyType,transformer: restartable());
    on<SignUpEventClearMessage>(_onClearMessage,transformer: restartable());
  }

  void _onLoadData(SignUpEventLoadData event,Emitter<SignUpState>emit){
    emit(SignUpState.init());
  }

  void _onSetCompanyType(SignUpEventSetCompanyType event,Emitter<SignUpState>emit){
    emit(state.copyWith(selectedCompanyType: event.companyTypeEnum));
  }

  void _onNextAddress(SignUpEventNextAddress event,Emitter<SignUpState>emit)async{
    final updatedState = _getUpdatedPageState(state, state.currentStepIndex + 1);
    emit(updatedState.copyWith(
        companyStepData: event.companyStepData
    ));
  }

  void _onNextUser(SignUpEventNextUser event,Emitter<SignUpState>emit)async{
    final updatedState = _getUpdatedPageState(state, state.currentStepIndex + 1);
    emit(updatedState.copyWith(
        addressStepData: event.addressStepData
    ));
  }

  void _onComplete(SignUpEventComplete event,Emitter<SignUpState>emit)async{
    if(!await _connectivityService.checkHasConnected){
      return emit(state.copyWith(
          message: _getNetworkError()
      ));
    }

    final userData = event.userStepData;
    final companyData = state.companyStepData;
    final addressData = state.addressStepData;
    if(companyData!=null && addressData!=null){
      final signUpModel = SignUpModelDataMapper.fromData(
          companyStepData: companyData,
          addressStepData: addressData,
          userStepData: userData
      );

      final response = await _authManager.signUp(signUpModel);
      response.handle(
        onSuccess: (data){
          emit(state.copyWith(message: "Başarılı"));
        },
        onError: (error){
          emit(state.copyWith(message: error));
        }
      );

    }else{
      emit(state.copyWith(
        message: "eksik veriler bulunmaktadır"
      ));
    }
  }

  void _onNextStep(SignUpEventNextStep event,Emitter<SignUpState>emit)async{
    final newSelectedPos = state.currentStepIndex + 1;
    final updatedStepsState = state.stepsState.selectStepWithOrder(newSelectedPos);
    emit(state.copyWith(
      currentStepIndex: newSelectedPos,
      stepsState: updatedStepsState
    ));
  }

  void _onPrevStep(SignUpEventPrevStep event,Emitter<SignUpState>emit)async{
    if(state.currentStepIndex <= 0) return;
    final newSelectedPos = state.currentStepIndex - 1;
    final updatedStepsState = state.stepsState.selectStepWithOrder(newSelectedPos);
    emit(state.copyWith(
        currentStepIndex: newSelectedPos,
        stepsState: updatedStepsState
    ));
  }

  void _onClearMessage(SignUpEventClearMessage event,Emitter<SignUpState>emit){
    emit(state.copyWith(message: null));
  }

  SignUpState _getUpdatedPageState(SignUpState state, int newPos){
    final updatedStepsState = state.stepsState.selectStepWithOrder(newPos);
    return state.copyWith(
        currentStepIndex: newPos,
        stepsState: updatedStepsState
    );
  }

  String? _getNetworkError(){
    return "Internet bağlantısı bulunmamaktadır";
  }
}