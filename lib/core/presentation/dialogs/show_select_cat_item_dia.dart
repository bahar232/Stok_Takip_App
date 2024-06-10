

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:quantumapp/core/domain/model/i_select_cat_item.dart';
import 'package:quantumapp/core/presentation/components/search_field/custom_search_extended.dart';

void showSelectCatItemDia<T extends ISelectCatItem>(BuildContext context,{
  required List<T> items,
  void Function(T selected)? onSelected,
  String? title
}){

  ValueNotifier<List<T>> filteredItemsNotifier = ValueNotifier(items);
  final scrollController = ScrollController();


  Widget getHeader(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 5,right: 5,top: 1,bottom: 7),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close)
            ),
          ),
          Text(
            title ?? "Select Item",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(width: 48,)
        ],
      ),
    );
  }


  void handleSearch(String query){
    EasyDebounce.debounce(
        "search_select_cat_item",
        const Duration(milliseconds: 300), () {

      final clearedText = query.trim();
      if(clearedText.isEmpty){
        filteredItemsNotifier.value = items;
      }else{
        filteredItemsNotifier.value = items.where((e){
          return e.title.toLowerCase().contains(query.toLowerCase());
        }).toList();
      }
    });
  }

  showDialog(
      useSafeArea: true,
      context: context,
      builder: (context){
        return Dialog(
          insetPadding: const EdgeInsets.only(left: 7,right: 7,top: 11,bottom: 17),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(right: 7,left: 7,top: 10,bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getHeader(context),
                  CustomSearchExtended(
                    hintText: "Ara",
                    autoFocus: true,
                    onChanged: (text){
                      handleSearch(text);
                    },
                  ),
                  const SizedBox(height: 10,),
                  ValueListenableBuilder<List<T>>(
                    valueListenable: filteredItemsNotifier,
                    builder: (context, filteredItems, child){
                      if(filteredItems.isEmpty){
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: Text(
                            "Herhangi bir sonuç bulunamadı",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        );
                      }
                      return ListView.builder(
                        shrinkWrap: true,
                        controller: scrollController,
                        itemCount: filteredItems.length,
                        itemBuilder: (context, index){
                          final item = filteredItems[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3),
                            child: ListTile(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13),
                                  side: const BorderSide(color: Colors.grey)
                              ),
                              title: Text(item.title),
                              onTap: (){
                                onSelected?.call(item);
                                Navigator.pop(context);
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        );
      }
  );

}