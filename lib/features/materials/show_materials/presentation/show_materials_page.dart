
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/presentation/bottom_sheets/show_bottom_menu_items.dart';
import 'package:quantumapp/core/presentation/components/app_bar/custom_nested_searchable_app_bar.dart';
import 'package:quantumapp/core/presentation/components/search_field/custom_search_extended.dart';
import 'package:quantumapp/core/presentation/dialogs/show_custom_alert_dialog.dart';
import 'package:quantumapp/core/util/show_toast.dart';
import 'package:quantumapp/features/materials/add_material/presentation/show_add_customer.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';
import 'package:quantumapp/features/materials/show_materials/domain/enums/material_menu_enum.dart';
import 'package:quantumapp/features/materials/show_materials/presentation/bloc/material_bloc.dart';
import 'package:quantumapp/features/materials/show_materials/presentation/bloc/material_event.dart';
import 'package:quantumapp/features/materials/show_materials/presentation/sections/table_content_section.dart';

import 'bloc/materials_state.dart';

class ShowMaterialsPage extends StatelessWidget {
  const ShowMaterialsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final bloc = context.read<MaterialBloc>();
    bloc.add(MaterialEventLoadData());

    return BlocListener<MaterialBloc,MaterialsState>(
      listenWhen: (prevState, nextState){
        return prevState.message != nextState.message;
      },
      listener: (context, state){
        final message = state.message;
        if(message!=null){
          ToastUtils.showLongToast(message);
          context.read<MaterialBloc>()
              .add(MaterialEventClearMessage());
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: BlocSelector<MaterialBloc,MaterialsState,bool>(
            selector: (state) => state.isSearchBarVisible,
            builder: (context, isSearchBarVisible){
              return CustomNestedSearchableAppBar(
                snap: true,
                floating: true,
                onTextChanged: (text){
                  bloc.add(MaterialEventSetQuery(query: text));
                },
                onSearchVisibilityChanged: (searchBarVisible){
                  bloc.add(MaterialEventSetSearchBarVisibility(isVisible: searchBarVisible));
                },
                searchHint: "Malzemelerde Ara",
                searchBarVisible: isSearchBarVisible,
                title: const Text("Malzemeler"),
                child: getTableContent(),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: (){
            showAddMaterial(context,onSuccessResult: (){
              bloc.add(MaterialEventLoadData());
            });
          },
        ),
      ),
    );
  }

  void handleBottomMenu(BuildContext context,MaterialModel item){

    void navBack(){
      Navigator.pop(context);
    }
    final bloc = context.read<MaterialBloc>();

    showBottomMenuItems(
        context,
        items: MaterialListMenuEnum.values,
        onItemClick: (menuItem){
          switch(menuItem){
            case MaterialListMenuEnum.remove:
              navBack();
              showCustomAlertDialog(
                  context,
                  title: "Silmek istediğinize emin misiniz?",
                  btnApproved: (){
                    bloc.add(MaterialEventDelete(materialModel: item));
                  }
              );
              break;
            case MaterialListMenuEnum.update:
              navBack();
              showUpdateMaterial(context, material: item,onSuccessUpdated: (){
                bloc.add(MaterialEventLoadData());
              });
              break;
          }
        }
    );
  }

}

