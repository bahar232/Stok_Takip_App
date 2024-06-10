

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/domain/extensions/resource_extension.dart';
import 'package:quantumapp/core/domain/services/connectivity_service.dart';
import 'package:quantumapp/features/invoices/shared/domain/repo/invoice_repo.dart';

import 'detail_invoice_event.dart';
import 'detail_invoice_state.dart';

class DetailInvoiceBloc extends Bloc<IDetailInvoiceEvent,DetailInvoiceState>{

  late final InvoiceRepo _invoiceRepo;
  late final ConnectivityService _connectivityService;

  DetailInvoiceBloc({
    required InvoiceRepo invoiceRepo,
    required ConnectivityService connectivityService
  }): super(DetailInvoiceState.init()){

    _invoiceRepo = invoiceRepo;
    _connectivityService = connectivityService;

    on<DetailInvoiceEventLoadData>(_onLoadData,transformer: restartable());
    on<DetailInvoiceEventClearMessage>(_onClearMessage,transformer: restartable());
  }

  void _onLoadData(DetailInvoiceEventLoadData event,Emitter<DetailInvoiceState>emit)async{
    if(!await _connectivityService.checkHasConnected){
      return emit(state.copyWith(
          message: _getNetworkError()
      ));
    }
    emit(DetailInvoiceState.init().copyWith(isLoading: true));

    final itemsResponse = await _invoiceRepo.getInvoiceDetail(event.invoiceId);

    itemsResponse.handle(
        onSuccess: (data){
          emit(state.copyWith(
              isLoading: false,
              invoiceResult: data
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


  void _onClearMessage(DetailInvoiceEventClearMessage event,Emitter<DetailInvoiceState>emit)async{
    emit(state.copyWith(message: null));
  }

}