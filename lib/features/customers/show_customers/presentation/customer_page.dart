import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/presentation/bottom_sheets/show_bottom_menu_items.dart';
import 'package:quantumapp/core/presentation/components/app_bar/custom_nested_searchable_app_bar.dart';
import 'package:quantumapp/core/presentation/components/search_field/custom_search_extended.dart';
import 'package:quantumapp/core/presentation/dialogs/show_custom_alert_dialog.dart';
import 'package:quantumapp/core/util/show_toast.dart';
import 'package:quantumapp/features/app/routers/app_routers.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/show_add_customer.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';
import 'package:quantumapp/features/customers/show_customers/domain/enums/customer_menu_enum.dart';
import 'package:quantumapp/features/customers/show_customers/presentation/bloc/customer_bloc.dart';
import 'package:quantumapp/features/customers/show_customers/presentation/bloc/customer_event.dart';
import 'package:quantumapp/features/customers/show_customers/presentation/bloc/customer_state.dart';
import 'package:quantumapp/features/customers/show_customers/presentation/components/customer_item.dart';

class CustomerPage extends StatelessWidget {
  CustomerPage({Key? key}) : super(key: key);

  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {

    final bloc = context.read<CustomerBloc>();
    bloc.add(CustomerEventLoadData());

    return BlocListener<CustomerBloc,CustomerState>(
      listenWhen: (prevState, nextState){
        return prevState.message != nextState.message;
      },
      listener: (context, state){
        final message = state.message;
        if(message!=null){
          ToastUtils.showLongToast(message);
          bloc.add(CustomerEventClearMessage());
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: BlocSelector<CustomerBloc,CustomerState,bool>(
            selector: (state) => state.isSearchBarVisible,
            builder: (context, isSearchBarVisible){
              return CustomNestedSearchableAppBar(
                onTextChanged: (text){
                  bloc.add(CustomerEventSetQuery(query: text));
                },
                onSearchVisibilityChanged: (searchBarVisible){
                  bloc.add(CustomerEventSetSearchBarVisibility(isVisible: searchBarVisible));
                },
                searchHint: "Cari hesap ara",
                searchBarVisible: isSearchBarVisible,
                title: const Text("Cariler"),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                  child: Column(
                    children: [
                      Expanded(
                          child: getContent()
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: (){
            showAddCustomer(context,onSuccessResult: (){
              bloc.add(CustomerEventLoadData());
            });
          },
        ),
      ),
    );
  }

  Widget getContent(){
    return SingleChildScrollView(
      controller: scrollController,
      child: BlocBuilder<CustomerBloc,CustomerState>(
        builder: (context, state){
          final items = state.currentItems;

          if(state.isLoading){
            return _getLoadingWidget(context);
          }

          if(items.isEmpty){
            return _getEmptyCustomerMessage(context);
          }

          return ListView.separated(
            shrinkWrap: true,
            itemCount: items.length,
            controller: scrollController,
            itemBuilder: (context, index){
              final item = items[index];
              return CustomerItem(
                  item: item,
                  onClick: (){
                    CustomerDetailRoute(id: item.id ?? 0).push(context);
                  },
                  onMenuClick: (){
                    _handleBottomMenu(context, item);
                  }
              );
            },
            separatorBuilder: (context, index){
              return const Divider(thickness: 3,);
            },
          );
        },
      ),
    );
  }

  Widget _getLoadingWidget(BuildContext context){
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 50),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _getEmptyCustomerMessage(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Center(
        child: Text(
          "Herhangi bir müşteri bulunamadı",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }

  void _handleBottomMenu(BuildContext context,Customer item){

    void navBack(){
      Navigator.pop(context);
    }
    final bloc = context.read<CustomerBloc>();

    showBottomMenuItems(
        context,
        items: CustomerListMenuEnum.values,
        onItemClick: (menuItem){
          switch(menuItem){
            case CustomerListMenuEnum.remove:
              navBack();
              showCustomAlertDialog(
                  context,
                  title: "Silmek istediğinize emin misiniz?",
                  btnApproved: (){
                    bloc.add(CustomerEventDelete(customer: item));
                  }
              );
              break;
            case CustomerListMenuEnum.update:
              navBack();
              showUpdateCustomer(context, customer: item,onSuccessUpdated: (){
                bloc.add(CustomerEventLoadData());
              });
              break;
            case CustomerListMenuEnum.customerMovements:
              navBack();
              CustomerMovementsRoute(id: item.id ?? 0).push(context);
              break;
          }
        }
    );
  }

}
