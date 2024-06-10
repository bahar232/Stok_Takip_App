import 'package:flutter/material.dart';
import 'package:quantumapp/core/presentation/dialogs/show_enter_number_dia.dart';


class QuantityItem extends StatelessWidget {
  final int quantity;
  final void Function()? onIncrease;
  final void Function()? onDecrease;
  final void Function(int)? onValueChange;

  const QuantityItem({
    Key? key,
    required this.quantity,
    this.onDecrease,
    this.onIncrease,
    this.onValueChange
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const color = Colors.grey;

    return Container(
      padding: EdgeInsets.zero,
      height: 48,
      decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(13)),
          border: Border.fromBorderSide(BorderSide(
              color: color
          ))
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: quantity == 1 ? null : onDecrease,
                child: const Icon(Icons.remove)
            ),
            const VerticalDivider(thickness: 1,width: 2,color: color,),
            TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: (){
                  showEnterNumberDia(
                      context,
                      minValue: 1,
                      currentValue: quantity,
                      title: "Miktar Giriniz",
                      label: "Miktar",
                      onApproved: (value){
                        onValueChange?.call(value);
                      }
                  );
                },
                child: Text(
                  quantity.toString(),
                  style: Theme.of(context).textTheme.titleMedium,
                )
            ),
            const VerticalDivider(thickness: 1,width: 2,color: color,),
            TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: onIncrease,
                child:  const Icon(Icons.add)
            ),
          ],
        ),
      ),
    );
  }
}