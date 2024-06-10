import 'package:flutter/material.dart';
import 'package:quantumapp/core/presentation/components/search_field/custom_search_field.dart';

class CustomSearchExtended extends StatelessWidget {

  final String? label;
  final String? hintText;
  final bool autocorrect;
  final bool autoFocus;
  final void Function(String text) onChanged;

  final Widget? leading;
  final Widget? trailing;

  const CustomSearchExtended({
    Key? key,
    this.trailing,
    this.leading,
    this.hintText,
    this.label,
    this.autocorrect = true,
    required this.onChanged,
    this.autoFocus = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _getRowItems(context),
    );
  }

  List<Widget> _getRowItems(BuildContext context){
    final items = <Widget>[];

    if(leading != null){
      items.add(leading!);
    }
    items.add(
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 3),
            child: CustomSearchField(
              hintText: hintText,
              autoFocus: autoFocus,
              onChanged: onChanged,
              label: label,
              autocorrect: autocorrect,
            ),
          ),
        )
    );

    if(trailing != null){
      items.add(trailing!);
    }
    return items;
  }

}
