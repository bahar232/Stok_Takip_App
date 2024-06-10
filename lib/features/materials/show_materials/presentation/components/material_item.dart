import 'package:flutter/material.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';

class MaterialItem extends StatelessWidget {

  final MaterialModel item;
  final void Function() onClick;
  final void Function() onMenuClick;


  const MaterialItem({
    Key? key,
    required this.item,
    required this.onClick,
    required this.onMenuClick
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("${item.id} - ${item.name}"),
      onTap: onClick,
      trailing: IconButton(onPressed: onMenuClick, icon: const Icon(Icons.more_vert)),
    );
  }
}
