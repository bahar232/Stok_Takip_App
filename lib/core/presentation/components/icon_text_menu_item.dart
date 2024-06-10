import 'package:flutter/material.dart';
import 'package:quantumapp/core/domain/model/icon_info.dart';

class IconTextMenuItem extends StatelessWidget {
  final String title;
  final void Function() onTap;
  final IconInfo? iconInfo;


  const IconTextMenuItem({Key? key,required this.title, required this.iconInfo, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    final shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(13));

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
      child: ListTile(
        shape: shape,
        leading: iconInfo?.toIcon(color: Theme.of(context).iconTheme.color),
        dense: true,
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        onTap: onTap,
      ),
    );
  }
}
