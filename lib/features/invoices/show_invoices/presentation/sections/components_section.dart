
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/util/show_toast.dart';
import 'package:quantumapp/features/invoices/show_invoices/presentation/bloc/show_invoices_bloc.dart';
import 'package:quantumapp/features/invoices/show_invoices/presentation/bloc/show_invoices_event.dart';
import 'package:quantumapp/features/invoices/show_invoices/presentation/bloc/show_invoices_state.dart';
import 'package:quantumapp/features/invoices/show_invoices/presentation/show_invoices_page.dart';

extension ShowInvoicesComponentsSection on ShowInvoicesPage{

  Widget getListeners({
    required Widget child
  }){
    return MultiBlocListener(
      listeners: [
        BlocListener<ShowInvoicesBloc,ShowInvoicesState>(
          listenWhen: (prevState, nextState){
            return prevState.message != nextState.message;
          },
          listener: (context, state){
            final message = state.message;
            if(message!=null){
              ToastUtils.showLongToast(message);
              context.read<ShowInvoicesBloc>()
                  .add(ShowInvoicesEventClearMessage());
            }
          },
        )
      ],
      child: child,
    );
  }

  Widget getLoadingWidget(BuildContext context){
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 50),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget getEmptyMessage(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Center(
        child: Text(
          "Herhangi bir fatura bulunamadı",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }

}