import 'package:flutter/material.dart';
import 'package:quantumapp/core/util/icon_resource.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final IconResource iconResource;
  final void Function() onClick;
  final Color? backgroundColor;

  const MenuItem({
    Key? key,
    required this.title,
    required this.onClick,
    this.backgroundColor,
    required this.iconResource
  }) : super(key: key);

  Widget getImage(){
    switch(iconResource){
      case IconResourceIconData(iconData: var iconData):
        return Icon(iconData,size: iconResource.size,);
      case IconResourceAsset(path: var path):
        return Image.asset(path,width: iconResource.size,);
    }
  }

  @override
  Widget build(BuildContext context) {

    final borderRadius = BorderRadius.circular(10);

    return Card(
      color: backgroundColor,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
        // side: BorderSide()
      ),
      margin: const EdgeInsets.symmetric(vertical: 3,horizontal: 3),
      child: InkWell(
        onTap: onClick,
        borderRadius: borderRadius,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 13),
          child: Column(
            children: [
             getImage(),
              const SizedBox(height: 8,),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}