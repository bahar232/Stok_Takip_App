import 'package:flutter/material.dart';
import 'package:quantumapp/core/presentation/components/menu_item.dart';

class MenuContentPan extends StatelessWidget {

  final List<MenuItem> menuItems;
  final Widget child;
  final double menuWidth;

  const MenuContentPan({
    Key? key,
    required this.menuItems,
    required this.child,
    this.menuWidth = 100
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        getMenuItemCol(context),
        Expanded(
          child: child,
        )
      ],
    );
  }

  Widget getMenuItemCol(BuildContext context){
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 5),
        child: SizedBox(
          width: menuWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: menuItems,
          ),
        ),
      ),
    );
  }
}
