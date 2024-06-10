import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/presentation/components/app_bar/custom_nested_view_app_bar.dart';
import 'package:quantumapp/core/presentation/components/menu_content_pan.dart';
import 'package:quantumapp/core/util/show_toast.dart';
import 'package:quantumapp/features/customers/customer_detail/presentation/bloc/customer_detail_bloc.dart';
import 'package:quantumapp/features/customers/customer_detail/presentation/bloc/customer_detail_event.dart';
import 'package:quantumapp/features/customers/customer_detail/presentation/bloc/customer_detail_state.dart';
import 'package:quantumapp/features/customers/customer_detail/presentation/sections/details.dart';
import 'package:quantumapp/features/customers/customer_detail/presentation/sections/menu_items.dart';

class CustomerDetailPage extends StatelessWidget {
  final int customerId;
  const CustomerDetailPage({
    Key? key,
    required this.customerId
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final bloc = context.read<CustomerDetailBloc>();
    bloc.add(CustomerDetailEventLoadCustomer(customerId: customerId));

    return BlocListener<CustomerDetailBloc,CustomerDetailState>(
      listenWhen: (prevState,nextState){
        return prevState.message != nextState.message;
      },
      listener: (context, state){
        final message = state.message;
        if(message!=null){
          ToastUtils.showLongToast(message);
          bloc.add(CustomerDetailEventClearMessage());
        }
      },
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: SafeArea(
            child: CustomNestedViewAppBar(
              pinned: true,
              snap: true,
              floating: true,
              title: const Text("Customer Detail"),
              appBarBottom: const TabBar(
                isScrollable: false,
                tabs: [
                  Tab(text: "Detail",),
                  Tab(text: "Map",)
                ],
              ),
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  getDetailTabContent(context),
                  getMapTabContent(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

extension CustomerDetailPageTabDetail on CustomerDetailPage{

  Widget getDetailTabContent(BuildContext context){
    return BlocBuilder<CustomerDetailBloc,CustomerDetailState>(
      builder: (context, state){
        return MenuContentPan(
          menuItems: getMenuItems(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 5),
            child: _getCustomerContent(context, state),
          ),
        );
      },
    );
  }

  Widget _getCustomerContent(BuildContext context, CustomerDetailState state){
    if(state.isLoading){
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    final customer = state.customer;
    if(customer == null){
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 5),
        child: Text(
          "customer not found",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: getCustomerDetailRows(customer),
    );
  }

}


extension CustomerDetailPageTabMap on CustomerDetailPage{

  Widget getMapTabContent(BuildContext context){
    return const Text("not implemented");
  }
}
