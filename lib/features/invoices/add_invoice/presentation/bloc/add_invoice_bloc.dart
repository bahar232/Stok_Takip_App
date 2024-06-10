
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/domain/extensions/resource_extension.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';
import 'package:quantumapp/core/domain/services/connectivity_service.dart';
import 'package:quantumapp/features/invoices/add_invoice/data/mapper/material_quantity_mapper.dart';
import 'package:quantumapp/features/invoices/add_invoice/domain/models/material_quantity.dart';
import 'package:quantumapp/features/invoices/shared/domain/repo/invoice_repo.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_save_model/invoice_save_model.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/sales_person/sales_person.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_category_model.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';
import 'add_invoice_event.dart';
import 'add_invoice_state.dart';
import 'package:collection/collection.dart';

class AddInvoiceBloc extends Bloc<IAddInvoiceEvent, AddInvoiceState>{

  late final InvoiceRepo _addInvoiceRepo;
  late final ConnectivityService _connectivityService;

  AddInvoiceBloc({
    required InvoiceRepo addInvoiceRepo,
    required ConnectivityService connectivityService
  }): super(AddInvoiceState.init()){

    _addInvoiceRepo = addInvoiceRepo;
    _connectivityService = connectivityService;

    on<AddInvoiceEventLoadData>(_onLoadData, transformer: restartable());
    on<AddInvoiceEventSelectSalesPerson>(_onSelectSalesPerson, transformer: restartable());
    on<AddInvoiceEventSelectCustomer>(_onSelectCustomer, transformer: restartable());

    on<AddInvoiceEventAddMaterialQuantity>(_onAddMaterialQuantity, transformer: restartable());
    on<AddInvoiceEventDeleteMaterialQuantity>(_onDeleteMaterialQuantity, transformer: restartable());
    on<AddInvoiceEventChangeMaterialQuantity>(_onChangeMaterialQuantity, transformer: restartable());


    on<AddInvoiceEventSave>(_onSave, transformer: restartable());
    on<AddInvoiceEventClearNavigateToBack>(_onClearNavigateToBack, transformer: restartable());
    on<AddInvoiceEventClearMessage>(_onClearMessage, transformer: restartable());

    add(AddInvoiceEventLoadData());
  }
  void _onDeleteMaterialQuantity(AddInvoiceEventDeleteMaterialQuantity event, Emitter<AddInvoiceState> emit){
    final items = state.addedMaterials.toList();
    items.remove(event.materialQuantity);
    emit(state.copyWith(addedMaterials: items));
  }
  void _onAddMaterialQuantity(AddInvoiceEventAddMaterialQuantity event, Emitter<AddInvoiceState> emit)async{
    final items = state.addedMaterials.toList();
    final indexItem = items.indexWhere((element) => element.material == event.material);

    if(indexItem != -1){
      final item = state.addedMaterials[indexItem];
      final updatedItem = item.copyWith(quantity: item.quantity + event.quantity);
      items[indexItem] = updatedItem;
    }else{
      final item = MaterialQuantity(material: event.material, quantity: event.quantity);
      items.insert(0,item);
    }
    emit(state.copyWith(addedMaterials: items));
  }

  void _onChangeMaterialQuantity(AddInvoiceEventChangeMaterialQuantity event, Emitter<AddInvoiceState> emit)async{
    final indexItem = state.addedMaterials.indexWhere((element) => element.material == event.material);
    if(indexItem!=-1){
      final item = state.addedMaterials[indexItem];
      final updatedItem = item.copyWith(quantity: event.updatedQuantity);
      final items = state.addedMaterials.toList();
      items[indexItem] = updatedItem;
      emit(state.copyWith(addedMaterials: items));
    }
  }

  void _onLoadData(AddInvoiceEventLoadData event, Emitter<AddInvoiceState> emit) async{
    if(!await _connectivityService.checkHasConnected){
      return emit(state.copyWith(
          message: _getNetworkError()
      ));
    }

    emit(AddInvoiceState.init().copyWith(isLoading: true));

    final materialsResponse = await _addInvoiceRepo.getMaterials();
    final salesPersonResponse = await _addInvoiceRepo.getSalesPersons();
    final customersResponse = await _addInvoiceRepo.getCustomers();

    String? errorMessage;
    List<MaterialModel> materials = [];
    List<SalesPerson> salesPersons = [];
    List<Customer> customers = [];


    materialsResponse.handle(
      onSuccess: (data){
        materials = data;
      },
      onError: (error){
        errorMessage = error;
      }
    );

    salesPersonResponse.handle(
        onSuccess: (data){
          salesPersons = data;
        },
        onError: (error){
          errorMessage = error;
        }
    );

    customersResponse.handle(
        onSuccess: (data){
          customers = data;
        },
        onError: (error){
          errorMessage = error;
        }
    );


    emit(state.copyWith(
      isLoading: false,
      customers: customers,
      materials: materials,
      salesPersons: salesPersons,
      message: errorMessage
    ));
  }

  void _onSelectSalesPerson(AddInvoiceEventSelectSalesPerson event, Emitter<AddInvoiceState> emit){
    emit(state.copyWith(selectedSalesPerson: event.salesPerson));
  }


  void _onSelectCustomer(AddInvoiceEventSelectCustomer event, Emitter<AddInvoiceState> emit){
    emit(state.copyWith(selectedCustomer: event.customer));
  }

  void _onSave(AddInvoiceEventSave event, Emitter<AddInvoiceState> emit)async{
    if(!await _connectivityService.checkHasConnected){
      return emit(state.copyWith(
          message: _getNetworkError()
      ));
    }

    final selectedCustomer = state.selectedCustomer;
    final selectedSalesPerson = state.selectedSalesPerson;
    final addedMaterials = state.addedMaterials;
    final invoiceItems = addedMaterials.map((e) => e.toInvoiceItem()).toList();


    final invoiceSaveModel = InvoiceSaveModel(
        date: DateTime.now(),
        description: "",
        customerId: selectedCustomer?.id ?? 0,
        salesPersonId: selectedSalesPerson?.id ?? 0,
        invoiceItems: invoiceItems,
    );
    emit(state.copyWith(isLoading: false));
    final response = await _addInvoiceRepo.addInvoice(invoiceSaveModel);

    response.handle(
      onSuccess: (data){
        emit(state.copyWith(
          message: data,
          isLoading: false,
          navigateToBack: true
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

  void _onClearNavigateToBack(AddInvoiceEventClearNavigateToBack event, Emitter<AddInvoiceState>emit){
    emit(state.copyWith(navigateToBack: false));
  }

  void _onClearMessage(AddInvoiceEventClearMessage event, Emitter<AddInvoiceState> emit){
    emit(state.copyWith(message: null));
  }
}