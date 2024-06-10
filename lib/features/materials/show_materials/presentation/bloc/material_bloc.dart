
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/domain/extensions/resource_extension.dart';
import 'package:quantumapp/core/domain/services/connectivity_service.dart';
import 'package:quantumapp/features/materials/shared/domain/repo/material_repo.dart';
import 'package:rxdart/rxdart.dart';
import 'material_event.dart';
import 'materials_state.dart';

class MaterialBloc extends Bloc<IMaterialEvent, MaterialsState>{

  late final MaterialRepo _materialRepo;
  late final ConnectivityService _connectivityService;

  final BehaviorSubject<String> _filterQuery = BehaviorSubject();

  MaterialBloc({
    required MaterialRepo materialRepo,
    required ConnectivityService connectivityService
  }): super(MaterialsState.init()){

    _materialRepo = materialRepo;
    _connectivityService = connectivityService;

    _filterQuery.value = "";

    on<MaterialEventClearMessage>(_onClearMessage, transformer: restartable());
    on<MaterialEventLoadData>(_onLoadData, transformer: restartable());
    on<MaterialEventDelete>(_onDelete, transformer: restartable());

    on<MaterialEventSetQuery>(_onSetQuery, transformer: restartable());
    on<MaterialEventSetSearchBarVisibility>(_onSetSearchBarVisibility, transformer: restartable());
    on<MaterialEventListenQueryChange>(_onListenQueryChange, transformer: restartable());

    add(MaterialEventListenQueryChange());
  }

  void _onSetQuery(MaterialEventSetQuery event, Emitter<MaterialsState> emit) async{
    final query = event.query.toLowerCase().trim();
    emit(state.copyWith(searchQuery: query));
    EasyDebounce.debounce("material_search", const Duration(milliseconds: 300), () {
      _filterQuery.value = query;
    });
  }

  void _onSetSearchBarVisibility(MaterialEventSetSearchBarVisibility event, Emitter<MaterialsState> emit) async{
    emit(state.copyWith(isSearchBarVisible: event.isVisible));
  }

  void _onListenQueryChange(MaterialEventListenQueryChange event, Emitter<MaterialsState> emit) async{
    await emit.forEach<String>(_filterQuery.stream, onData: (query){
      final filteredItems = state.items.where((e) => e.name.toLowerCase().contains(query)).toList();
      return state.copyWith(filteredItems: filteredItems);
    });
  }

  void _onLoadData(MaterialEventLoadData event, Emitter<MaterialsState> emit) async{

    if(!await _connectivityService.checkHasConnected){
      return emit(state.copyWith(
          message: _getNetworkError()
      ));
    }

    emit(state.copyWith(isLoading: true));

    final response = await _materialRepo.getAllMaterials();
    response.handle(
      onSuccess: (data){
        emit(state.copyWith(items: data,isLoading: false));
      },
      onError: (error){
        emit(state.copyWith(message: error,isLoading: false));
      }
    );
  }

  void _onDelete(MaterialEventDelete event, Emitter<MaterialsState> emit)async{

    if(!await _connectivityService.checkHasConnected){
      return emit(state.copyWith(
          message: _getNetworkError()
      ));
    }

    final response = await _materialRepo.deleteMaterial(event.materialModel);

    response.handle(
        onSuccess: (data){
          final updatedItems = state.items.toList();
          updatedItems.remove(event.materialModel);
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

  void _onClearMessage(MaterialEventClearMessage event, Emitter<MaterialsState> emit){
    emit(state.copyWith(message: null));
  }
}