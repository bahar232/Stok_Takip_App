import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final TextEditingController controller;
  final String? errorText;
  final String? label;
  final String? hintText;
  final bool isPassword;
  final bool autoCorrect;
  final bool autoFocus;
  final FocusNode? focusNode;
  final TextInputType? keyBoardType;
  final TextInputAction? inputAction;
  final EdgeInsetsGeometry? padding;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;

  const CustomTextField({
    required this.controller,
    Key? key,
    this.errorText,
    this.hintText,
    this.label,
    this.autoFocus = true,
    this.isPassword = false,
    this.autoCorrect = false,
    this.keyBoardType,
    this.inputAction,
    this.focusNode,
    this.padding,
    this.maxLength,
    this.maxLines,
    this.minLines
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: padding ?? const EdgeInsets.all(1),
      child: TextField(
        controller: controller,
        autocorrect: autoCorrect,
        obscureText: isPassword,
        autofocus: autoFocus,
        keyboardType: keyBoardType,
        focusNode: focusNode,
        maxLines: maxLines,
        minLines: minLines,
        maxLength: maxLength,
        textInputAction: inputAction,
        onSubmitted: (_){
          if(inputAction == TextInputAction.next){
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: InputDecoration(
          errorText: errorText,
          hintText: hintText,
          filled: true,
          label: label!=null ? Text(label??"") : null,
          border: const OutlineInputBorder(
              borderRadius:
              BorderRadius.all(Radius.circular(10))
          ),
          suffixIcon: IconButton(
            onPressed: (){
              controller.clear();
            },
            icon: const Icon(Icons.clear)
          )
        ),
      ),
    );
  }
}