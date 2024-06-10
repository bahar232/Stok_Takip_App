

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/features/materials/show_materials/presentation/bloc/material_bloc.dart';
import 'package:quantumapp/features/materials/show_materials/presentation/bloc/materials_state.dart';
import 'package:quantumapp/features/materials/show_materials/presentation/components/material_item.dart';
import 'package:quantumapp/features/materials/show_materials/presentation/sections/components_section.dart';
import 'package:quantumapp/features/materials/show_materials/presentation/show_materials_page.dart';

extension ShowMaterialsPageDefaultContentExt on ShowMaterialsPage{

  Widget getDefaultContent(){
    return BlocBuilder<MaterialBloc,MaterialsState>(
      builder: (context, state){
        final items = state.currentItems;

        if(state.isLoading){
          return getLoadingWidget(context);
        }

        if(items.isEmpty){
          return getEmptyCustomerMessage(context);
        }

        return ListView.separated(
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, index){
            final item = items[index];
            return MaterialItem(
                item: item,
                onClick: (){
                  // CustomerDetailRoute(id: item.id ?? 0).push(context);
                },
                onMenuClick: (){
                  handleBottomMenu(context, item);
                }
            );
          },
          separatorBuilder: (context, index){
            return const Divider(thickness: 3,);
          },
        );
      },
    );
  }
}