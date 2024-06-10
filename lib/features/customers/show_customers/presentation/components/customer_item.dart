import 'package:flutter/material.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';

class CustomerItem extends StatelessWidget {

  final Customer item;
  final void Function() onMenuClick;
  final void Function() onClick;

  const CustomerItem({
    Key? key,
    required this.item,
    required this.onMenuClick,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: SizedBox(
        height: 150,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(flex: 2,child: Icon(Icons.person,size: 100,)),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 30,),
                  Text(
                    item.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Spacer(),
                  Text(
                      "Açık Risk: 1.226.0",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    "Price: ",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 10,),
                ],
              ),
            ),
            Expanded(
              child: InkWell(
                borderRadius: BorderRadius.circular(13),
                  onTap: onMenuClick,
                  child: const Icon(Icons.more_vert,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
