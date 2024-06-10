
import 'package:flutter/material.dart';
import 'package:quantumapp/core/presentation/components/detail_row.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_model/invoice_model.dart';

class InvoiceDetailSummary extends StatelessWidget {

  final InvoiceModel invoice;

  const InvoiceDetailSummary({
    Key? key,
    required this.invoice
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

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
}
