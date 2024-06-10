

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/presentation/components/app_bar/custom_nested_view_app_bar.dart';
import 'package:quantumapp/features/app/routers/app_routers.dart';
import 'package:quantumapp/features/invoices/show_invoices/presentation/bloc/show_invoices_bloc.dart';
import 'package:quantumapp/features/invoices/show_invoices/presentation/bloc/show_invoices_event.dart';
import 'package:quantumapp/features/invoices/show_invoices/presentation/bloc/show_invoices_state.dart';
import 'package:quantumapp/features/invoices/show_invoices/presentation/components/invoice_item.dart';
import 'package:quantumapp/features/invoices/show_invoices/presentation/sections/components_section.dart';
import 'package:hidable/hidable.dart';

class ShowInvoicesPage extends StatelessWidget {
  ShowInvoicesPage({Key? key}) : super(key: key);

  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {

    final bloc = context.read<ShowInvoicesBloc>();
    bloc.add(ShowInvoicesEventLoadData());
    
    return getListeners(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 7),
            child: CustomNestedViewAppBar(
              scrollController: scrollController,
              snap: true,
              floating: true,
              title: const Text("Faturalar"),
              child: BlocBuilder<ShowInvoicesBloc,ShowInvoicesState>(
                builder: (context, state){

                  if(state.isLoading){
                    return getLoadingWidget(context);
                  }
                  final items = state.items;

                  if(items.isEmpty){
                    return getEmptyMessage(context);
                  }

                  return ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index){
                      final item = items[index];
                      return InvoiceItem(
                        item: item,
                        onDetailsClick: (){
                          DetailInvoiceRoute(invoiceId: item.id).push(context);
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
        floatingActionButton: Hidable(
          controller: scrollController,
          child: Align(
            alignment: Alignment.centerRight,
            child: FloatingActionButton.extended(
              onPressed: (){
                AddInvoiceRoute().push(context);
              },
              icon: const Icon(Icons.add),
              label: const Text("Fature Ekle")
            ),
          ),
        ),
      ),
    );
  }
}
