


import 'package:flutter/material.dart';
import 'package:quantumapp/core/domain/model/i_menu_item.dart';
import 'package:quantumapp/core/domain/model/icon_info.dart';

enum MaterialListMenuEnum implements IMenuItem{
  update(
      title: "Güncelle",
      iconInfo: IconInfo(iconData: Icons.drive_file_rename_outline)
  ),
  remove(
      title: "Sil",
      iconInfo: IconInfo(iconData: Icons.folder_delete)
  );

  const MaterialListMenuEnum({required this.title, this.iconInfo});

  @override
  final String title;

  @override
  final IconInfo? iconInfo;

}