

import 'package:flutter/material.dart';

sealed class IconResource{
  final double size;
  IconResource._({required this.size});

  factory IconResource.iconData(IconData iconData) =>
      IconResourceIconData(iconData: iconData);

  factory IconResource.asset(String path) =>
      IconResourceAsset(path: path);
}

class IconResourceIconData extends IconResource{
  final IconData iconData;
  IconResourceIconData({
    required this.iconData,
    super.size = 24
  }) : super._();
}

class IconResourceAsset extends IconResource{
  final String path;
  IconResourceAsset({
    required this.path,
    super.size = 24
  }): super._();
}