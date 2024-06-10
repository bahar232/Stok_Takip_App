

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/presentation/components/app_bar/custom_nested_view_app_bar.dart';
import 'package:quantumapp/features/invoices/detail_invoice/bloc/detail_invoice_bloc.dart';
import 'package:quantumapp/features/invoices/detail_invoice/bloc/detail_invoice_event.dart';
import 'package:quantumapp/features/invoices/detail_invoice/bloc/detail_invoice_state.dart';
import 'package:quantumapp/features/invoices/detail_invoice/sections/components_section.dart';

class DetailInvoicePage extends StatelessWidget {

  final int invoiceId;

  DetailInvoicePage({
    Key? key,
    required this.invoiceId
  }) : super(key: key);

  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {

    final bloc = context.read<DetailInvoiceBloc>();
    bloc.add(DetailInvoiceEventLoadData(invoiceId: invoiceId));

    return getListeners(
      child: Scaffold(
        body: SafeArea(
          child: CustomNestedViewAppBar(
            snap: true,
            floating: true,
            title: const Text("Fatura Detayı"),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 13),
              child: BlocBuilder<DetailInvoiceBloc,DetailInvoiceState>(
                builder: (context, state){

                  if(state.isLoading){
                    return getLoadingWidget(context);
                  }
                  final invoiceResult = state.invoiceResult;
                  if(invoiceResult == null){
                    return getEmptyMessage(context);
                  }
                  final invoice = invoiceResult.invoiceModel;

                  return SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          getHeaderInfo(
                              context,
                              invoiceResult.invoiceModel,
                              invoiceResult.customer
                          ),
                          getContent(context, invoiceResult.invoiceWithMaterials),
                          getSummaryInfo(context,invoice),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }





}
