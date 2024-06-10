import 'package:flutter/material.dart';

class SelectCategoryItem extends StatelessWidget {

  final String placeHolder;
  final String? title;
  final bool isEnabled;
  final void Function()? onTap;
  final Icon? leading;
  final String? error;
  final EdgeInsetsGeometry? padding;

  const SelectCategoryItem({
    Key? key,
    required this.placeHolder,
    this.title,
    this.isEnabled = false,
    this.onTap,
    this.leading,
    this.error,
    this.padding
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final style = Theme.of(context).textTheme.titleMedium;

    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 11,horizontal: 1),
      child: TextField(
        readOnly: true,
        controller: TextEditingController(text: title),
        decoration: InputDecoration(
          labelText: placeHolder,
          filled: true,
          enabled: isEnabled,
          errorText: error,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13),
          ),
          suffixIcon: const Icon(Icons.arrow_drop_down)
        ),
        style: style,
        onTap: onTap,
        enableInteractiveSelection: false,
        showCursor: false,
      ),
    );
  }
}
