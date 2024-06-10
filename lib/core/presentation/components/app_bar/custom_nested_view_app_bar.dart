import 'package:flutter/material.dart';
import 'package:quantumapp/core/presentation/components/app_bar/custom_nested_view.dart';

import 'custom_sliver_app_bar.dart';

class CustomNestedViewAppBar extends StatelessWidget {

  final Widget child;
  final ScrollController? scrollController;
  final bool floatHeaderSlivers;
  final PreferredSizeWidget? appBarBottom;
  final Widget? title;
  final bool pinned;
  final bool snap;
  final bool floating;
  final List<Widget>? actions;
  final List<Widget> headerSlivers;
  const CustomNestedViewAppBar({
    Key? key,
    required this.child,
    this.scrollController,
    this.floatHeaderSlivers = false,
    this.appBarBottom,
    this.title,
    this.actions,
    this.pinned = false,
    this.snap = false,
    this.floating = false,
    this.headerSlivers = const []
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomNestedView(
        scrollController: scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return [
            CustomSliverAppBar(
              title: title,
              actions: actions,
              bottom: appBarBottom,
              floating: floating,
              pinned: pinned,
              snap: snap,
            ),
            ...headerSlivers
          ];
        },
        child: child
    );
  }
}
