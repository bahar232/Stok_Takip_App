import 'package:flutter/material.dart';

class CustomNestedView extends StatelessWidget {

  final List<Widget> Function(BuildContext context, bool innerBoxIsScrolled) headerSliverBuilder;
  final Widget child;
  final ScrollController? scrollController;
  final bool floatHeaderSlivers;

  const CustomNestedView({
    Key? key,
    required this.headerSliverBuilder,
    required this.child,
    this.scrollController,
    this.floatHeaderSlivers = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: headerSliverBuilder,
        body: child,
        controller: scrollController,
        floatHeaderSlivers: floatHeaderSlivers
    );
  }
}
