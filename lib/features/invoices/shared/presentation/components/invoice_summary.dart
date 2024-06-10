
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/features/invoices/add_invoice/presentation/bloc/add_invoice_bloc.dart';
import 'package:quantumapp/features/invoices/add_invoice/presentation/bloc/add_invoice_state.dart';

class InvoiceSummary extends StatelessWidget {

  final double subTotal;
  final double taxTotal;
  final double totalPrice;

  const InvoiceSummary({
    Key? key,
    required this.subTotal,
    required this.totalPrice,
    required this.taxTotal
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const itemPaddings = EdgeInsets.symmetric(vertical: 5);

    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
          side: const BorderSide(color: Colors.grey)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 19,horizontal: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _SummaryItem(
              title: "Ara Toplam",
              value: subTotal.toString(),
              paddings: itemPaddings,
            ),
            _SummaryItem(
              title: "Vergi",
              value: taxTotal.toString(),
              paddings: itemPaddings,
            ),
            const Divider(),
            _SummaryItem(
              title: "Toplam",
              value: totalPrice.toString(),
              titleFontWeight: FontWeight.w500,
              paddings: itemPaddings,
            ),
          ],
        ),
      ),
    );
  }
}

class _SummaryItem extends StatelessWidget {
  final String title;
  final String value;
  final EdgeInsets paddings;
  final FontWeight? titleFontWeight;

  const _SummaryItem({
    Key? key,
    required this.value,
    required this.title,
    this.paddings = EdgeInsets.zero,
    this.titleFontWeight
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.titleMedium;
    return Padding(
      padding: paddings,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: style?.copyWith(fontWeight: titleFontWeight),
          ),
          Text(
              value,
              style: style?.copyWith(fontWeight: FontWeight.w500)
          )
        ],
      ),
    );
  }
}
