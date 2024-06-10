
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/features/get_info/bloc/get_info_bloc.dart';
import 'package:quantumapp/core/features/get_info/bloc/get_info_event.dart';
import 'package:quantumapp/core/features/get_info/bloc/get_info_state.dart';
import 'package:quantumapp/core/util/show_toast.dart';

class GetInfoConsumer extends StatelessWidget {

  final Widget child;

  const GetInfoConsumer({
    Key? key,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<GetInfoBloc,GetInfoState>(
      listenWhen: (prevState, nextState){
        return prevState.message != nextState.message;
      },
      listener: (context, state){
        final message = state.message;
        if(message!=null){
          ToastUtils.showLongToast(message);
          context.read<GetInfoBloc>()
              .add(GetInfoEventClearMessage());
        }
      },
      child: BlocBuilder<GetInfoBloc,GetInfoState>(
        buildWhen: (prevState, nextState){
          return prevState.isLoading != nextState.isLoading;
        },
        builder: (context, state){
          if(state.isLoading){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return child;
        },
      ),
    );
  }
}
