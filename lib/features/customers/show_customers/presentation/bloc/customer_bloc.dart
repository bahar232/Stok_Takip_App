
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/domain/extensions/resource_extension.dart';
import 'package:quantumapp/core/domain/services/connectivity_service.dart';
import 'package:quantumapp/core/util/resource.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';
import 'package:quantumapp/features/customers/shared/domain/repo/customer_repo.dart';
import 'package:rxdart/rxdart.dart';
import 'customer_event.dart';
import 'customer_state.dart';

class CustomerBloc extends Bloc<ICustomerEvent, CustomerState>{

  late final CustomerRepo _customerRepo;
  late final ConnectivityService _connectivityService;

  final BehaviorSubject<String> _filterQuery = BehaviorSubject();

  CustomerBloc({
    required CustomerRepo customerRepo,
    required ConnectivityService connectivityService
  }): super(CustomerState.init()){

    _customerRepo = customerRepo;
    _connectivityService = connectivityService;

    _filterQuery.value = "";

    on<CustomerEventClearMessage>(_onClearMessage, transformer: restartable());
    on<CustomerEventLoadData>(_onLoadData, transformer: restartable());
    on<CustomerEventDelete>(_onDelete, transformer: restartable());
    on<CustomerEventSetSearchBarVisibility>(_onSetSearchBarVisibility, transformer: restartable());
    on<CustomerEventSetQuery>(_onSetQuery, transformer: restartable());
    on<CustomerEventListenQueryChange>(_onListenQueryChange, transformer: restartable());

    add(CustomerEventListenQueryChange());
  }

  void _onSetSearchBarVisibility(CustomerEventSetSearchBarVisibility event, Emitter<CustomerState> emit){
    emit(state.copyWith(isSearchBarVisible: event.isVisible));
  }

  void _onListenQueryChange(CustomerEventListenQueryChange event, Emitter<CustomerState> emit)async{
    await emit.forEach<String>(_filterQuery.stream, onData: (query){
      final filteredItems = state.items.where((e) => e.name.toLowerCase().contains(query)).toList();
      return state.copyWith(filteredItems: filteredItems);
    });
  }

  void _onSetQuery(CustomerEventSetQuery event, Emitter<CustomerState> emit){
    final query = event.query.toLowerCase().trim();
    emit(state.copyWith(searchQuery: query));
    EasyDebounce.debounce("customer_search", const Duration(milliseconds: 300), () {
      _filterQuery.value = query;
    });
  }

  void _onLoadData(CustomerEventLoadData event, Emitter<CustomerState> emit) async{

    if(!await _connectivityService.checkHasConnected){
      return emit(state.copyWith(
        message: _getNetworkError()
      ));
    }

    emit(state.copyWith(isLoading: true));

    final response = await _customerRepo.getAllCustomers();
    response.handle(
      onSuccess: (data){
        emit(state.copyWith(
            items: data,
            filteredItems: data,
            isLoading: false
        ));
      },
      onError: (error){
        emit(state.copyWith(message: error,isLoading: false));
      }
    );
  }

  void _onDelete(CustomerEventDelete event, Emitter<CustomerState> emit)async{

    if(!await _connectivityService.checkHasConnected){
      return emit(state.copyWith(
          message: _getNetworkError()
      ));
    }

    final response = await _customerRepo.deleteCustomer(event.customer.id ?? 0);

    response.handle(
        onSuccess: (data){
          final updatedItems = state.items.toList();
          updatedItems.remove(event.customer);
          emit(state.copyWith(message: data,items: updatedItems));
        },
        onError: (error){
          emit(state.copyWith(message: error));
        }
    );
  }

  String? _getNetworkError(){
    return "Internet bağlantısı bulunmamaktadır";
  }

  void _onClearMessage(CustomerEventClearMessage event, Emitter<CustomerState> emit){
    emit(state.copyWith(message: null));
  }
}