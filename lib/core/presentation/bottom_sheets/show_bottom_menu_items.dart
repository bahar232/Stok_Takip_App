


import 'package:flutter/material.dart';
import 'package:quantumapp/core/domain/model/i_menu_item.dart';
import 'package:quantumapp/core/presentation/components/icon_text_menu_item.dart';
import 'package:quantumapp/core/presentation/handlers/duplicate_dialog_handler.dart';

void showBottomMenuItems<T extends IMenuItem>(BuildContext context, {
  required List<T> items,
  required Function(T) onItemClick,
  String? title,
  bool useRootNavigator = false
}){

  duplicateDialogHandler(func: ()async{

    List<Widget>getChildren(){
      final widgets=<Widget>[];
      if(title!=null){
        widgets.add(const SizedBox(height: 13,));
        widgets.add(
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            )
        );
      }
      widgets.add(const SizedBox(height: 5,));
      widgets.addAll(items.map((e){
        return IconTextMenuItem(
          title: e.title,
          iconInfo: e.iconInfo,
          onTap: (){
            onItemClick(e);
          },
        );
      }));
      widgets.add(const SizedBox(height: 7,));
      return widgets;
    }

    showModalBottomSheet(
        useRootNavigator: useRootNavigator,
        isScrollControlled: true,
        backgroundColor: Theme.of(context).colorScheme.surface,
        useSafeArea: true,

        context: context,
        builder: (context){
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 8,bottom: 4,right: 4,left: 4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: getChildren(),
              ),
            ),
          );
        }
    );

  });

}