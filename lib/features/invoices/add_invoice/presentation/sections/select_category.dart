

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/domain/contants/k_validators.dart';
import 'package:quantumapp/core/domain/model/cat_selector_model.dart';
import 'package:quantumapp/core/presentation/components/select_category_item/select_category_item.dart';
import 'package:quantumapp/core/presentation/components/select_category_item/select_form_category_item.dart';
import 'package:quantumapp/core/presentation/dialogs/show_select_cat_item_dia.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';
import 'package:quantumapp/features/invoices/add_invoice/presentation/add_invoice_page.dart';
import 'package:quantumapp/features/invoices/add_invoice/presentation/bloc/add_invoice_bloc.dart';
import 'package:quantumapp/features/invoices/add_invoice/presentation/bloc/add_invoice_event.dart';
import 'package:quantumapp/features/invoices/add_invoice/presentation/bloc/add_invoice_state.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/sales_person/sales_person.dart';


extension AddInvoicePageSelectCategoryExt on AddInvoicePage{

  Widget getSelectCustomer(){
    return BlocSelector<AddInvoiceBloc,AddInvoiceState,CatSelectorModel<Customer>>(
      selector: (state)=>CatSelectorModel(
          items: state.customers,
          selected: state.selectedCustomer,
          isEnabled: true
      ),
      builder: (context, stateSelector){

        return SelectFormCategoryItem(
          placeHolder: "Cari Seç",
          title: stateSelector.selected?.name,
          isEnabled: stateSelector.isEnabled,
          validators: [KValidate.required],
          onTap: (){
            showSelectCatItemDia(
                context,
                title: "Cari Seç",
                items: stateSelector.items,
                onSelected: (selected){
                  context.read<AddInvoiceBloc>()
                      .add(AddInvoiceEventSelectCustomer(customer: selected));
                }
            );
          },
        );
      },
    );
  }

  Widget getSelectSalesPerson(){
    return BlocSelector<AddInvoiceBloc,AddInvoiceState,CatSelectorModel<SalesPerson>>(
      selector: (state)=>CatSelectorModel(
          items: state.salesPersons,
          selected: state.selectedSalesPerson,
          isEnabled: true
      ),
      builder: (context, stateSelector){

        return SelectFormCategoryItem(
          placeHolder: "Plasiyer Seç",
          title: stateSelector.selected?.name,
          isEnabled: stateSelector.isEnabled,
          validators: [KValidate.required],
          onTap: (){
            showSelectCatItemDia(
                context,
                title: "Plasiyer Seç",
                items: stateSelector.items,
                onSelected: (selected){
                  context.read<AddInvoiceBloc>()
                      .add(AddInvoiceEventSelectSalesPerson(salesPerson: selected));
                }
            );
          },
        );
      },
    );
  }

}