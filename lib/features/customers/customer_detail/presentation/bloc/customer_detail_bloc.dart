
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/domain/extensions/resource_extension.dart';
import 'package:quantumapp/core/domain/services/connectivity_service.dart';
import 'package:quantumapp/features/customers/shared/domain/repo/customer_repo.dart';
import 'customer_detail_event.dart';
import 'customer_detail_state.dart';

class CustomerDetailBloc extends Bloc<ICustomerDetailEvent, CustomerDetailState>{
  late final CustomerRepo _customerRepo;
  late final ConnectivityService _connectivityService;

  CustomerDetailBloc({
    required CustomerRepo customerRepo,
    required ConnectivityService connectivityService
  }): super(CustomerDetailState.init()){

    _customerRepo = customerRepo;
    _connectivityService = connectivityService;

    on<CustomerDetailEventClearMessage>(_onClearMessage, transformer: restartable());
    on<CustomerDetailEventLoadCustomer>(_onLoadCustomer, transformer: restartable());
  }



  void _onLoadCustomer(CustomerDetailEventLoadCustomer event, Emitter<CustomerDetailState> emit) async{
    emit(CustomerDetailState.init());

    if(!await _connectivityService.checkHasConnected){
      return emit(state.copyWith(
          message: _getNetworkError()
      ));
    }

    emit(CustomerDetailState.init().copyWith(isLoading: true));

    final response = await _customerRepo.getCustomerById(event.customerId);

    response.handle(
      onSuccess: (data){
        emit(state.copyWith(
            customer: data,
            setCustomer: true,
            isLoading: false
        ));
      },
      onError: (error){
        emit(state.copyWith(
          isLoading: false,
          setMessage: true,
          message: error
        ));
      }
    );
  }

  String? _getNetworkError(){
    return "Internet bağlantısı bulunmamaktadır";
  }


  void _onClearMessage(CustomerDetailEventClearMessage event, Emitter<CustomerDetailState> emit){
    emit(state.copyWith(setMessage: true));
  }
}