

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';
part 'materials_state.freezed.dart';

@freezed
class MaterialsState with _$MaterialsState{

  const MaterialsState._();

  const factory MaterialsState({
    String? message,
    required List<MaterialModel> items,
    required List<MaterialModel> filteredItems,
    required bool isLoading,
    required String searchQuery,
    required bool isSearchBarVisible
  }) = _MaterialsState;

  static MaterialsState init(){
    return const MaterialsState(
      items: [],
      filteredItems: [],
      isSearchBarVisible: false,
      searchQuery: "",
      isLoading: false
    );
  }

  List<MaterialModel> get currentItems{
    if(searchQuery.isEmpty) return items;
    return filteredItems;
  }
}