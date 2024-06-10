

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/domain/extensions/resource_extension.dart';
import 'package:quantumapp/core/domain/services/connectivity_service.dart';
import 'package:quantumapp/features/invoices/shared/domain/repo/invoice_repo.dart';

import 'show_invoices_event.dart';
import 'show_invoices_state.dart';

class ShowInvoicesBloc extends Bloc<IShowInvoicesEvent,ShowInvoicesState>{

  late final InvoiceRepo _invoiceRepo;
  late final ConnectivityService _connectivityService;

  ShowInvoicesBloc({
    required InvoiceRepo invoiceRepo,
    required ConnectivityService connectivityService
  }): super(ShowInvoicesState.init()){

    _invoiceRepo = invoiceRepo;
    _connectivityService = connectivityService;

    on<ShowInvoicesEventLoadData>(_onLoadData,transformer: restartable());
    on<ShowInvoicesEventClearMessage>(_onClearMessage,transformer: restartable());

  }

  void _onLoadData(ShowInvoicesEventLoadData event,Emitter<ShowInvoicesState>emit)async{
    if(!await _connectivityService.checkHasConnected){
      return emit(state.copyWith(
          message: _getNetworkError()
      ));
    }

    emit(state.copyWith(isLoading: true));

    final itemsResponse = await _invoiceRepo.getInvoiceModels();

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

  String? _getNetworkError(){
    return "Internet bağlantısı bulunmamaktadır";
  }

  void _onClearMessage(ShowInvoicesEventClearMessage event,Emitter<ShowInvoicesState>emit)async{
    emit(state.copyWith(message: null));
  }

}