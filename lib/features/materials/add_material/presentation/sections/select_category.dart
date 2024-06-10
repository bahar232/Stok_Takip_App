

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/presentation/components/select_category_item/select_form_category_item.dart';
import 'package:quantumapp/core/presentation/dialogs/show_select_cat_item_dia.dart';
import 'package:quantumapp/core/presentation/components/select_category_item/select_category_item.dart';
import 'package:quantumapp/core/domain/model/cat_selector_model.dart';
import 'package:quantumapp/features/materials/add_material/presentation/add_customer_dialog_content.dart';
import 'package:quantumapp/features/materials/add_material/presentation/bloc/add_material_bloc.dart';
import 'package:quantumapp/features/materials/add_material/presentation/bloc/add_material_event.dart';
import 'package:quantumapp/features/materials/add_material/presentation/bloc/add_material_state.dart';
import 'package:quantumapp/features/materials/add_material/presentation/sections/content_section.dart';
import 'package:quantumapp/features/materials/shared/domain/enums/material_type_enum.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_category_model.dart';

extension AddMaterialDialogContentSelectCatExt on AddMaterialDialogContent{

  Widget getSelectCategory(String? error){
    return BlocSelector<AddMaterialBloc,AddMaterialState,CatSelectorModel<MaterialCategoryModel>>(
      selector: (state)=>CatSelectorModel(
          items: state.categories,
          selected: state.selectedCategory,
          isEnabled: true
      ),
      builder: (context, stateSelector){
        return SelectFormCategoryItem(
          placeHolder: "Kategori Seç",
          title: stateSelector.selected?.name,
          isEnabled: stateSelector.isEnabled,
          validators: getSharedValidators(),
          error: error,
          onTap: (){
            showSelectCatItemDia(
                context,
                title: "Kategori Seç",
                items: stateSelector.items,
                onSelected: (selected){
                  context.read<AddMaterialBloc>()
                      .add(AddMaterialEventSelectCategory(categoryModel: selected));
                }
            );
          },
        );
      },
    );
  }

  Widget getSelectType(String? error){
    return BlocSelector<AddMaterialBloc,AddMaterialState,CatSelectorModel<MaterialTypeEnum>>(
      selector: (state)=>CatSelectorModel(
          items: MaterialTypeEnum.values,
          selected: state.selectedType,
          isEnabled: true
      ),
      builder: (context, stateSelector){
        return SelectFormCategoryItem(
          placeHolder: "Malzeme Türü Seç",
          title: stateSelector.selected?.title,
          validators: getSharedValidators(),
          isEnabled: true,
          error: error,
          onTap: (){
            showSelectCatItemDia(
                context,
                title: "Malzeme Türü Seç",
                items: stateSelector.items,
                onSelected: (selected){
                  context.read<AddMaterialBloc>()
                      .add(AddMaterialEventSelectType(materialType: selected));
                }
            );
          },
        );
      },
    );
  }
}