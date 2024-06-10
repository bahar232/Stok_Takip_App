

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/domain/extensions/resource_extension.dart';
import 'package:quantumapp/core/domain/services/connectivity_service.dart';
import 'package:quantumapp/features/customers/shared/domain/repo/customer_repo.dart';

import 'customer_movements_event.dart';
import 'customer_movements_state.dart';

class CustomerMovementsBloc extends Bloc<ICustomerMovementsEvent,CustomerMovementsState>{

  late final CustomerRepo _customerRepo;
  late final ConnectivityService _connectivityService;

  CustomerMovementsBloc({
    required CustomerRepo customerRepo,
    required ConnectivityService connectivityService
  }): super(CustomerMovementsState.init()){

    _customerRepo = customerRepo;
    _connectivityService = connectivityService;

    on<CustomerMovementsEventLoadData>(_onLoadData,transformer: restartable());
    on<CustomerMovementsEventClearMessage>(_onClearMessage,transformer: restartable());
  }


  void _onLoadData(CustomerMovementsEventLoadData event, Emitter<CustomerMovementsState> emit)async{
    if(!await _connectivityService.checkHasConnected){
      return emit(state.copyWith(
          message: _getNetworkError()
      ));
    }
    emit(state.copyWith(isLoading: true));

    final itemsResponse = await _customerRepo.getAllCustomerMovements(event.customerId);

    itemsResponse.handle(
      onSuccess: (data){
        emit(state.copyWith(
            isLoading: false,
            items: data
        ));
      },
      onError: (error){
        emit(state.copyWith(
            isLoading: false,
            message: error
        ));
      }
    );
  }

  void _onClearMessage(CustomerMovementsEventClearMessage event, Emitter<CustomerMovementsState> emit){
    emit(state.copyWith(message: null));
  }

  String? _getNetworkError(){
    return "Internet bağlantısı bulunmamaktadır";
  }

}