

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/presentation/dialogs/show_select_cat_item_dia.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/add_customer_dialog_content.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/bloc/add_customer_bloc.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/bloc/add_customer_event.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/bloc/add_customer_state.dart';
import 'package:quantumapp/core/presentation/components/select_category_item/select_category_item.dart';
import 'package:quantumapp/core/domain/model/cat_selector_model.dart';
import 'package:quantumapp/features/customers/shared/domain/enums/account_type_enum.dart';
import 'package:quantumapp/core/domain/model/city.dart';
import 'package:quantumapp/core/domain/model/country.dart';
import 'package:quantumapp/core/domain/model/currency_type_model/currency_type_model.dart';
import 'package:quantumapp/core/domain/model/district.dart';

extension AddCustomerDialogContentSelectCatExt on AddCustomerDialogContent{

  Widget getSelectAccountType(){
    return BlocSelector<AddCustomerBloc,AddCustomerState,AccountTypeEnum>(
      selector: (state)=> state.selectedAccountType,
      builder: (context, selectedAccountType){
        return SelectCategoryItem(
          placeHolder: "Hesap Türü Seç",
          title: selectedAccountType.title,
          isEnabled: true,
          onTap: (){
            showSelectCatItemDia(
                context,
                title: "Hesap Türü Seç",
                items: AccountTypeEnum.values,
                onSelected: (selected){
                  context.read<AddCustomerBloc>()
                      .add(AddCustomerEventSelectAccountType(accountType: selected));
                }
            );
          },
        );
      },
    );
  }
}