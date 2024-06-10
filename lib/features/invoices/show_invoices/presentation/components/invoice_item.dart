


import 'package:flutter/material.dart';
import 'package:quantumapp/core/presentation/components/detail_row.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_model/invoice_model.dart';

class InvoiceItem extends StatelessWidget {

  final InvoiceModel item;
  final void Function() onDetailsClick;

  const InvoiceItem({
    Key? key,
    required this.item,
    required this.onDetailsClick
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 7),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      item.date.toString(),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  DetailRow(
                    title: "No",
                    content: item.no,
                    useFontWeightForContent: false,
                    commonStyle: Theme.of(context).textTheme.titleMedium,
                  ),
                  DetailRow(
                    title: "Toplam",
                    content: item.total.toStringAsFixed(1),
                    commonStyle: Theme.of(context).textTheme.bodyLarge,
                    useFontWeightForContent: false,
                  ),

                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: onDetailsClick,
                  child: const Text("Detaylar")
              ),
            )
          ],
        ),
      ),
    );
  }
}

