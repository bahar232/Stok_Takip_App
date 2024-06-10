import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  late final TextEditingController controller;
  final String? label;
  final String? hintText;
  final bool autocorrect;
  final void Function(String text) onChanged;
  final bool autoFocus;

  final ValueNotifier<bool> showClearButtonNotifier = ValueNotifier(false);

  CustomSearchField({
    Key? key,
    this.hintText,
    this.label,
    this.autocorrect = true,
    this.autoFocus = false,
    required this.onChanged
  }) : super(key: key){
    controller = TextEditingController()..addListener(() {
      EasyDebounce.debounce("custom_search", const Duration(milliseconds: 300), () {
        final isNotEmpty = controller.text.isNotEmpty;
        if(showClearButtonNotifier.value != isNotEmpty){
          showClearButtonNotifier.value = isNotEmpty;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(1),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        autofocus: autoFocus,
        autocorrect: autocorrect,
        decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            label: label!=null ? Text(label??"") : null,
            border: const OutlineInputBorder(
                borderRadius:
                BorderRadius.all(Radius.circular(10))
            ),
            suffixIcon: getSuffixIcon(context)
        ),
      ),
    );
  }

  Widget? getSuffixIcon(BuildContext context){
    return ValueListenableBuilder<bool>(
      valueListenable: showClearButtonNotifier,
      builder: (context, showClearButton, child){
        if(!showClearButton) return const SizedBox();
        return  IconButton(
            onPressed: (){
              FocusScope.of(context).unfocus();
              onChanged("");
              controller.clear();
            },
            icon: const Icon(Icons.clear)
        );
      },
    );
  }
}
