
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/add_customer_dialog_content.dart';
import 'package:quantumapp/features/customers/shared/domain/enums/account_type_enum.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';
import '../domain/model/add_customer_data.dart';
import 'bloc/add_customer_bloc.dart';
import 'bloc/add_customer_event.dart';


void showUpdateCustomer(BuildContext context,{
  required Customer customer,
  void Function()? onSuccessUpdated,
}){
  _showCustomerHandler(
    context,
    title: "Müşteri Güncelle",
    customer: customer,
    btnLabel: "Güncelle",
    onSuccessResult: onSuccessUpdated,
    onBtnClick: (data){
      context.read<AddCustomerBloc>()
          .add(AddCustomerEventUpdate(customerData: data,customer: customer));
    },
  );
}



void showAddCustomer(BuildContext context,{ void Function()? onSuccessResult}){

  _showCustomerHandler(
    context,
    title: "Müşteri Ekle",
    btnLabel: "Kaydet",
    onSuccessResult: onSuccessResult,
    onBtnClick: (data){
      context.read<AddCustomerBloc>()
          .add(AddCustomerEventSave(customerData: data));
    },
  );
}


void _showCustomerHandler(BuildContext context,{
  required String title,
  required String btnLabel,
  required void Function(AddCustomerData) onBtnClick,
  void Function()? onSuccessResult,
  Customer? customer
}){

  showModalBottomSheet(
      isScrollControlled: true,
      useSafeArea: true,
      context: context,
      builder: (context){
        return AddCustomerDialogContent(
          title: title,
          btnLabel: btnLabel,
          onBtnClick: onBtnClick,
          onSuccessResult: onSuccessResult,
          customer: customer,
        );
      }
  );
}
