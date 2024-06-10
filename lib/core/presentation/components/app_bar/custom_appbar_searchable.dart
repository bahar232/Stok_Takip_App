import 'package:flutter/material.dart';
import 'package:quantumapp/core/presentation/components/app_bar/search_sliver_appbar.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'custom_sliver_app_bar.dart';

class CustomAppBarSearchable extends StatelessWidget {
  final void Function(String) onChanged;
  final void Function() onClosed;
  final CustomSliverAppBar sliverAppBar;
  final bool searchBarVisible;
  final String? searchHint;

  const CustomAppBarSearchable({
    Key? key,
    required this.searchBarVisible,
    required this.onChanged,
    required this.onClosed,
    required this.sliverAppBar,
    this.searchHint
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBar = searchBarVisible
        ? _getSearchBar(context)
        : sliverAppBar;

    return SliverAnimatedSwitcher(
      duration: const Duration(milliseconds: 100),
      child: appBar,
    );
    return const Placeholder();
  }

  Widget _getSearchBar(BuildContext context){
    return SearchSliverAppBar(
      onChanged: onChanged,
      onClosed: onClosed,
      hint: searchHint,
    );
  }
}
