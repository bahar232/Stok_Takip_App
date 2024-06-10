
import 'dart:io';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/data/manager/auth_manager_impl.dart';
import 'package:quantumapp/core/domain/extensions/resource_extension.dart';
import 'package:quantumapp/core/domain/services/connectivity_service.dart';
import 'package:quantumapp/features/materials/add_material/data/mapper/add_material_data_mapper.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_category_model.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';
import 'package:quantumapp/features/materials/shared/domain/repo/material_repo.dart';
import 'add_material_event.dart';
import 'add_material_state.dart';
import 'package:collection/collection.dart';

class AddMaterialBloc extends Bloc<IAddMaterialEvent, AddMaterialState>{

  late final MaterialRepo _materialRepo;
  late final ConnectivityService _connectivityService;

  AddMaterialBloc({
    required MaterialRepo materialRepo,
    required ConnectivityService connectivityService
  }): super(AddMaterialState.init()){

    _materialRepo = materialRepo;
    _connectivityService = connectivityService;

    on<AddMaterialEventClearMessage>(_onClearMessage, transformer: restartable());
    on<AddMaterialEventLoadData>(_onLoadData, transformer: restartable());
    on<AddMaterialEventSelectCategory>(_onSelectCategory, transformer: restartable());
    on<AddMaterialEventSelectType>(_onSelectType, transformer: restartable());
    on<AddMaterialEventSetImage>(_onSetImage, transformer: restartable());

    on<AddMaterialEventSave>(_onSave, transformer: restartable());
    on<AddMaterialEventUpdate>(_onUpdate, transformer: restartable());
    on<AddMaterialEventClearNavigateToBack>(_onClearNavigateToBack, transformer: restartable());

    add(AddMaterialEventLoadData(materialInit: null));
  }

  void _onSetImage(AddMaterialEventSetImage event, Emitter<AddMaterialState> emit)async{
    emit(state.copyWith(
      selectedFile: File(event.xFile.path)
    ));
  }

  void _onSelectType(AddMaterialEventSelectType event, Emitter<AddMaterialState> emit){
    emit(state.copyWith(selectedType: event.materialType));
  }

  void _onLoadData(AddMaterialEventLoadData event, Emitter<AddMaterialState> emit) async{
    if(!await _connectivityService.checkHasConnected){
      return emit(state.copyWith(
          message: _getNetworkError()
      ));
    }

    emit(state.copyWith(isLoading: true));

    final categoriesResponse = await _materialRepo.getAllMaterialCategories();

    String? errorMessage;
    List<MaterialCategoryModel> categories = [];

    categoriesResponse.handle(
      onSuccess: (data){
        categories = data;
      },
      onError: (error){
        errorMessage = error;
      }
    );

    emit(state.copyWith(
      isLoading: false,
      categories: categories,
      message: errorMessage
    ));

    emit(_adaptCustomerState(state, event.materialInit));
  }

  AddMaterialState _adaptCustomerState(AddMaterialState oldState, MaterialModel? material){
    if(material == null) return oldState;
    final selectedCategory = state.categories.firstWhereOrNull((e) => e.categoryCode == material.categoryCode);

    if(selectedCategory!=null){
      return oldState.copyWith(
        selectedType: material.typeEnum,
        selectedCategory: selectedCategory,
      );
    }
    return oldState;
  }

  void _onSelectCategory(AddMaterialEventSelectCategory event, Emitter<AddMaterialState> emit){
    emit(state.copyWith(selectedCategory: event.categoryModel));
  }

  void _onSave(AddMaterialEventSave event, Emitter<AddMaterialState> emit)async{
    if(!await _connectivityService.checkHasConnected){
      return emit(state.copyWith(
          message: _getNetworkError()
      ));
    }
    await AuthManager.instance.getSafeAuthAsync(
      onAuth: (auth)async{

        final material = event.materialData.toMaterial( companyCode: auth.companyCode,
          editingUserId: auth.id,
          editingUserNameAndSurname: auth.nameSurname,
          addingUserId: auth.id,
          addingUserNameAndSurname: auth.nameSurname
        );
        final response = await _materialRepo.addMaterial(material,state.selectedFile?.path);

        response.handle(
          onSuccess: (data){
            emit(state.copyWith(message: data,navigateToBackWithSuccess: true));
          },
          onError: (error){
            emit(state.copyWith(message: error));
          }
        );
      }
    );

  }

  void _onUpdate(AddMaterialEventUpdate event, Emitter<AddMaterialState> emit)async{
    if(!await _connectivityService.checkHasConnected){
      return emit(state.copyWith(
          message: _getNetworkError()
      ));
    }

    await AuthManager.instance.getSafeAuthAsync(
      onAuth: (auth)async{
        final material = event.materialData.toMaterial(
            companyCode: auth.companyCode,
            editingUserId: auth.id,
            editingUserNameAndSurname: auth.nameSurname,
            addingUserId: event.material.addingUserId,
            addingUserNameAndSurname: event.material.addingUserNameAndSurname
        );

        final response = await _materialRepo.patchMaterial(material);
        response.handle(
          onSuccess: (data){
            emit(state.copyWith(message: data,navigateToBackWithSuccess: true));
          },
          onError: (error){
            emit(state.copyWith(message: error));
          }
        );
      }
    );

  }

  String? _getNetworkError(){
    return "Internet bağlantısı bulunmamaktadır";
  }


  void _onClearNavigateToBack(AddMaterialEventClearNavigateToBack event, Emitter<AddMaterialState>emit){
    emit(state.copyWith(navigateToBackWithSuccess: false));
  }

  void _onClearMessage(AddMaterialEventClearMessage event, Emitter<AddMaterialState> emit){
    emit(state.copyWith(message: null));
  }
}