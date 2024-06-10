
import 'package:flutter/material.dart';
import 'package:quantumapp/core/presentation/components/detail_row.dart';
import 'package:quantumapp/core/presentation/components/detail_row_scrollable.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_detail/invoice_detail.dart';
import 'package:quantumapp/features/invoices/shared/domain/models/invoice_detail_with_material/invoice_detail_with_material.dart';

class InvoiceDetailItem extends StatelessWidget {
  
  final InvoiceDetailWithMaterial item;
  final EdgeInsets? margin;
  
  const InvoiceDetailItem({
    Key? key,
    required this.item,
    this.margin
  }) : super(key: key);

  InvoiceDetail get detail => item.invoiceDetail;

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: getTitleSide(context),
                ),
                IntrinsicWidth(
                  child: getPriceSide(context),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  Widget getTitleSide(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            item.material.name,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600
            ),
          ),
          const SizedBox(height: 4,),
          Text(
            "${detail.quantity.toStringAsFixed(0)} Adet",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w500
            ),
          ),
          DetailRowScrollable(
              title: "Birim fiyatı",
              content: detail.unitPrice.toStringAsFixed(1)
          ),
        ],
      ),
    );
  }
  
  Widget getPriceSide(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        DetailRow(
            title: "Kodu",
            content: detail.no
        ),
        const Text(""),
        const Spacer(),
        DetailRow(
            title: "Brüt",
            content: detail.gross.toStringAsFixed(1)
        ),
        DetailRow(
            title: "Kdv",
            content: detail.vat.toStringAsFixed(1)
        ),
        const Divider(),
        DetailRow(
          title: "Toplam",
          content: detail.totalPrice.toStringAsFixed(1),
          titleStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600
          ),
          contentStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600
          ),
        )
      ],
    );
  }
  
}
