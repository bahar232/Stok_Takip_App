

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/util/show_toast.dart';
import 'package:quantumapp/features/invoices/add_invoice/presentation/add_invoice_page.dart';
import 'package:quantumapp/features/invoices/add_invoice/presentation/bloc/add_invoice_bloc.dart';
import 'package:quantumapp/features/invoices/add_invoice/presentation/bloc/add_invoice_event.dart';
import 'package:quantumapp/features/invoices/add_invoice/presentation/bloc/add_invoice_state.dart';

extension AddInvoicePageComponentsExt on AddInvoicePage{

  Widget getListeners({required Widget child}){
    return MultiBlocListener(
      listeners: [
        BlocListener<AddInvoiceBloc,AddInvoiceState>(
          listenWhen: (prevState, nextState){
            return prevState.message != nextState.message;
          },
          listener: (context, state){
            final message = state.message;
            if(message!=null){
              ToastUtils.showLongToast(message);
              context.read<AddInvoiceBloc>()
                  .add(AddInvoiceEventClearMessage());
            }
          },
        ),
        BlocListener<AddInvoiceBloc,AddInvoiceState>(
          listenWhen: (prevState, nextState){
            return prevState.navigateToBack != nextState.navigateToBack;
          },
          listener: (context, state){
            final navigateToBack = state.navigateToBack;
            if(navigateToBack){
              Navigator.pop(context);
            }
          },
        ),
      ],
      child: child,
    );
  }

  Widget getLoadingItem(){
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

}