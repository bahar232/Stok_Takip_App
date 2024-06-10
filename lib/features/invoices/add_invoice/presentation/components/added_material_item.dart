import 'package:flutter/material.dart';
import 'package:quantumapp/features/invoices/add_invoice/domain/models/material_quantity.dart';

import 'quantity_item.dart';


class AddedMaterialItem extends StatelessWidget {
  final MaterialQuantity item;
  final void Function()? onDelete;
  final void Function(int)? onValueChange;

  const AddedMaterialItem({
    Key? key,
    required this.item,
    this.onDelete,
    this.onValueChange
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final material = item.material;
    return Card(
      color: Theme.of(context).cardColor,
      margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 3),
      elevation: 1,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
          side: const BorderSide(color: Colors.grey)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                material.name,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            const SizedBox(height: 4,),
            Text(
                "Satış Fiyatı: ${material.sellingPrice}",
                style: Theme.of(context).textTheme.titleMedium
            ),
            const SizedBox(height: 16,),
            Row(
              children: [
                QuantityItem(
                  quantity: item.quantity,
                  onDecrease: (){
                    onValueChange?.call(item.quantity - 1);
                  },
                  onIncrease:  (){
                    onValueChange?.call(item.quantity + 1);
                  },
                  onValueChange: onValueChange,
                ),
                const SizedBox(width: 16,),
                OutlinedButton(
                    onPressed: onDelete,
                    child: const Text("Sil")
                )
              ],
            ),
            const SizedBox(height: 8,),
          ],
        ),
      ),
    );
  }
}