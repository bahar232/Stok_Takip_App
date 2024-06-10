

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:quantumapp/core/presentation/components/app_bar/custom_nested_view_app_bar.dart';
import 'package:quantumapp/core/presentation/dialogs/show_select_cat_item_dia.dart';
import 'package:quantumapp/core/util/show_toast.dart';
import 'package:quantumapp/features/invoices/add_invoice/presentation/bloc/add_invoice_event.dart';
import 'package:quantumapp/features/invoices/add_invoice/presentation/sections/components_section.dart';
import 'package:quantumapp/features/invoices/add_invoice/presentation/sections/content_section.dart';

import 'bloc/add_invoice_bloc.dart';
import 'bloc/add_invoice_state.dart';
import 'components/add_material_button.dart';
import 'components/added_material_item.dart';
import 'components/invoice_summary.dart';

class AddInvoicePage extends StatelessWidget {
  AddInvoicePage({Key? key}) : super(key: key);

  final scrollController = ScrollController();
  final formKey = GlobalKey<FormBuilderState>();


  @override
  Widget build(BuildContext context) {

    final bloc = context.read<AddInvoiceBloc>();
    bloc.add(AddInvoiceEventLoadData());

    return getListeners(
      child: Scaffold(
        body: SafeArea(
          child: CustomNestedViewAppBar(
            title: const Text("Fatura Ekle"),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 7),
                child: BlocSelector<AddInvoiceBloc,AddInvoiceState,bool>(
                  selector: (state) => state.isLoading,
                  builder: (context, isLoading){
                    if(isLoading){
                      return getLoadingItem();
                    }
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        getContent(),
                        Padding(
                          padding: const EdgeInsets.only(left: 7,right: 7,top: 13,bottom: 5),
                          child: Text(
                            "Eklenen Malzemeler",
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        BlocBuilder<AddInvoiceBloc,AddInvoiceState>(
                          builder: (context, state){
                            final addedMaterials = state.addedMaterials;
                            return ListView.builder(
                              controller: scrollController,
                              itemCount: addedMaterials.length + 1,
                              shrinkWrap: true,
                              itemBuilder: (context, index){

                                if(index == addedMaterials.length){
                                  return AddMaterialButton(
                                    onClick: (){
                                      showSelectCatItemDia(
                                          title: "Malzeme Seç",
                                          context,
                                          items: state.materials,
                                          onSelected: (item){
                                            bloc.add(AddInvoiceEventAddMaterialQuantity(material: item, quantity: 1));
                                          }
                                      );
                                    },
                                  );
                                }

                                final addedMaterial = addedMaterials[index];
                                return AddedMaterialItem(
                                  item: addedMaterial,
                                  onDelete: (){
                                    bloc.add(AddInvoiceEventDeleteMaterialQuantity(materialQuantity: addedMaterial));
                                  },
                                  onValueChange: (newValue){
                                    bloc.add(AddInvoiceEventChangeMaterialQuantity(material: addedMaterial.material,
                                        updatedQuantity: newValue));
                                  },
                                );
                              },
                            );
                          },
                        ),
                        const SizedBox(height: 32,),
                        const InvoiceSummary(),
                        FilledButton(
                            onPressed: (){
                              formKey.currentState?.validate();
                              if(formKey.currentState?.isValid == true){
                                bloc.add(AddInvoiceEventSave());
                              }
                            },
                            child: const Text("Kaydet")
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}






