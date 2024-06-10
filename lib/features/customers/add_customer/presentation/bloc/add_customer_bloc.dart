
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/data/manager/auth_manager_impl.dart';
import 'package:quantumapp/core/domain/extensions/resource_extension.dart';
import 'package:quantumapp/core/domain/services/connectivity_service.dart';
import 'package:quantumapp/features/customers/add_customer/data/mapper/add_customer_data_mapper.dart';
import 'package:quantumapp/features/customers/shared/domain/repo/customer_repo.dart';
import 'add_customer_event.dart';
import 'add_customer_state.dart';

class AddCustomerBloc extends Bloc<IAddCustomerEvent, AddCustomerState>{
  late final CustomerRepo _customerRepo;
  late final ConnectivityService _connectivityService;

  AddCustomerBloc({
    required CustomerRepo customerRepo,
    required ConnectivityService connectivityService
  }): super(AddCustomerState.init()){

    _customerRepo = customerRepo;
    _connectivityService = connectivityService;

    on<AddCustomerEventClearMessage>(_onClearMessage, transformer: restartable());
    on<AddCustomerEventSelectAccountType>(_onSelectAccountType, transformer: restartable());

    on<AddCustomerEventSave>(_onSave, transformer: restartable());
    on<AddCustomerEventUpdate>(_onUpdate, transformer: restartable());
    on<AddCustomerEventClearNavigateToBack>(_onClearNavigateToBack, transformer: restartable());

  }

  void _onSave(AddCustomerEventSave event, Emitter<AddCustomerState> emit)async{
    if(!await _connectivityService.checkHasConnected){
      return emit(state.copyWith(
          message: _getNetworkError()
      ));
    }

    await AuthManager.instance.getSafeAuthAsync(onAuth: (auth)async{
      final response = await _customerRepo.addCustomer(event.customerData.toCustomer(
          companyCode: auth.companyCode,
          addingUserId: auth.id,
          addingUserNameAndSurname: auth.nameSurname
      ));

      response.handle(
          onSuccess: (data){
            emit(state.copyWith(message: data,navigateToBackWithSuccess: true));
          },
          onError: (error){
            emit(state.copyWith(message: error));
          }
      );
    });
  }

  void _onUpdate(AddCustomerEventUpdate event, Emitter<AddCustomerState> emit)async{
    if(!await _connectivityService.checkHasConnected){
      return emit(state.copyWith(
          message: _getNetworkError()
      ));
    }

    final response = await _customerRepo.patchCustomer(event.customerData.toCustomerWithC(c: event.customer));
    response.handle(
        onSuccess: (data){
          emit(state.copyWith(message: data,navigateToBackWithSuccess: true));
        },
        onError: (error){
          emit(state.copyWith(message: error));
        }
    );
  }

  void _onSelectAccountType(AddCustomerEventSelectAccountType event, Emitter<AddCustomerState> emit){
    emit(state.copyWith(selectedAccountType: event.accountType));
  }


  String? _getNetworkError(){
    return "Internet bağlantısı bulunmamaktadır";
  }

  void _onClearNavigateToBack(AddCustomerEventClearNavigateToBack event, Emitter<AddCustomerState>emit){
    emit(state.copyWith(navigateToBackWithSuccess: false));
  }

  void _onClearMessage(AddCustomerEventClearMessage event, Emitter<AddCustomerState> emit){
    emit(state.copyWith(message: null));
  }
}