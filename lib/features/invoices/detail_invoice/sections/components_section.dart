
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';
import 'package:quantumapp/core/presentation/components/detail_row.dart';
import 'package:quantumapp/core/presentation/components/detail_row_scrollable.dart';
import 'package:quantumapp/core/util/show_toast.dart';
import 'package:quantumapp/features/invoices/detail_invoice/bloc/detail_invoice_bloc.dart';
import 'package:quantumapp/features/invoices/detail_invoice/bloc/detail_invoice_event.dart';
import 'package:quantumapp/features/invoices/detail_invoice/bloc/detail_invoice_state.dart';
import 'package:quantumapp/features/invoices/detail_invoice/components/invoice_detail_item.dart';
import 'package:quantumapp/features/invoices/detail_invoice/detail_invoice_page.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_detail_with_material/invoice_detail_with_material.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_model/invoice_model.dart';

extension DetailInvoiceComponentsSection on DetailInvoicePage{

  Widget getHeaderInfo(BuildContext context, InvoiceModel invoice,Customer customer){

    return Card(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Text(
                "Fatura Bilgisi",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            const Divider(),
            DetailRow(
                title: "Tarih",
                content: invoice.date.toIso8601String()
            ),
            DetailRow(
                title: "No",
                content: invoice.no
            ),
            DetailRow(
                title: "Cari",
                content: customer.name
            ),
          ],
        ),
      ),
    );
  }

  Widget getContent(BuildContext context, List<InvoiceDetailWithMaterial> items){
    return Card(
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 5),
              child: Text(
                "Ürünler",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            const Divider(),
            ListView.separated(
              separatorBuilder: (context,index){
                return const Divider(
                  indent: 10,
                  endIndent: 10,
                );
              },
              controller: scrollController,
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index){
                final item = items[index];
                return InvoiceDetailItem(
                  item: item,
                );
              },
            )
          ],
        ),
      ),
    );
  }


  Widget getSummaryInfo(BuildContext context,InvoiceModel invoice){

    final titleStyle = Theme.of(context).textTheme.bodyLarge;
    final titleStyleBold = titleStyle?.copyWith(
        fontWeight: FontWeight.w600
    );

    return Card(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Text(
                "Özet",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            const Divider(),
            DetailRow(
              title: "Brüt",
              content: invoice.gross.toStringAsFixed(1),
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            DetailRow(
              title: "Vergi",
              content: invoice.vat.toStringAsFixed(1),
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            const Divider(
              indent: 30, endIndent: 30,
            ),
            DetailRow(
              title: "Toplam",
              content: invoice.total.toStringAsFixed(1),
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              titleStyle: titleStyleBold,
              contentStyle: titleStyleBold,
            ),
          ],
        ),
      ),
    );
  }


  Widget getListeners({
    required Widget child
  }){
    return MultiBlocListener(
      listeners: [
        BlocListener<DetailInvoiceBloc,DetailInvoiceState>(
          listenWhen: (prevState, nextState){
            return prevState.message != nextState.message;
          },
          listener: (context, state){
            final message = state.message;
            if(message!=null){
              ToastUtils.showLongToast(message);
              context.read<DetailInvoiceBloc>()
                  .add(DetailInvoiceEventClearMessage());
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
          "Herhangi bir sonuç bulunamadı",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }


}