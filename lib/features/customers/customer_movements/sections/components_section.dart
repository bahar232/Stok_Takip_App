
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/util/show_toast.dart';

import '../bloc/customer_movements_bloc.dart';
import '../bloc/customer_movements_event.dart';
import '../bloc/customer_movements_state.dart';
import '../customer_movements_page.dart';

extension CustomerMovementsSection on CustomerMovementsPage{

  Widget getListeners({
    required Widget child
  }){
    return MultiBlocListener(
      listeners: [
        BlocListener<CustomerMovementsBloc,CustomerMovementsState>(
          listenWhen: (prevState, nextState){
            return prevState.message != nextState.message;
          },
          listener: (context, state){
            final message = state.message;
            if(message!=null){
              ToastUtils.showLongToast(message);
              context.read<CustomerMovementsBloc>()
                  .add(CustomerMovementsEventClearMessage());
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
          "Herhangi bir hareket bulunamadı",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }

}