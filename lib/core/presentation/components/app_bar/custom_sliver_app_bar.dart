

import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {

  final Widget? title;
  final bool pinned;
  final bool snap;
  final bool floating;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;

  const CustomSliverAppBar({
    super.key,
    this.pinned = false,
    this.snap = false,
    this.floating = false,
    this.actions,
    this.title,
    this.bottom
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: pinned,
      snap: snap,
      floating: floating,
      key: key,
      bottom: bottom,
      title: title,
      actions: actions,
    );
  }
}
