
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/util/show_toast.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/add_customer_dialog_content.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/bloc/add_customer_bloc.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/bloc/add_customer_event.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/bloc/add_customer_state.dart';

extension AddCustomerDialogContentComponentExt on AddCustomerDialogContent{

  Widget getListeners({required Widget child}){
    return MultiBlocListener(
      listeners: [
        BlocListener<AddCustomerBloc,AddCustomerState>(
          listenWhen: (prevState, nextState){
            return prevState.navigateToBackWithSuccess != nextState.navigateToBackWithSuccess;
          },
          listener: (context, state){
            final navigateToBack = state.navigateToBackWithSuccess;
            if(navigateToBack){
              onSuccessResult?.call();
              context.read<AddCustomerBloc>()
                  .add(AddCustomerEventClearNavigateToBack());
              Navigator.pop(context);
            }
          }
        ),
        BlocListener<AddCustomerBloc,AddCustomerState>(
            listenWhen: (prevState, nextState){
              return prevState.message != nextState.message;
            },
            listener: (context, state){
              final message = state.message;
              if(message!=null){
                ToastUtils.showLongToast(message);
                context.read<AddCustomerBloc>()
                    .add(AddCustomerEventClearMessage());
              }
            }
        ),

      ],
      child: child,
    );
  }

}