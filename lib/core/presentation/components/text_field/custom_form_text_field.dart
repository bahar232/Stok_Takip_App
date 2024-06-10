import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter/services.dart';

class CustomFormTextField extends StatelessWidget {

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
  final String? name;
  final String? initialValue;
  final AutovalidateMode autoValidateMode;
  final List<FormFieldValidator<String>> validators;

  final ValueNotifier<bool> _isEmptyTextNotifier = ValueNotifier(true);
  final ValueNotifier<bool> _showPassWordNotifier = ValueNotifier(false);

  CustomFormTextField({
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
    this.minLines,
    this.name,
    this.initialValue,
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
    this.validators = const []
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    _isEmptyTextNotifier.value = controller.text.isEmpty;

    return ValueListenableBuilder(
        valueListenable: _showPassWordNotifier,
        builder: (context, showPassword,child){
          return Padding(
            padding: padding ?? const EdgeInsets.all(1),
            child: FormBuilderTextField(
              name: name ?? label ?? hintText ?? "",
              controller: controller,
              onChanged: (newText){
                final isEmpty = newText?.trim().isEmpty ?? false;
                if(_isEmptyTextNotifier.value != isEmpty){
                  _isEmptyTextNotifier.value = isEmpty;
                }
              },
              inputFormatters: [FilteringTextInputFormatter.deny(
                  RegExp(r"^\s")
              )],
              autovalidateMode: autoValidateMode,
              initialValue: initialValue,
              validator: FormBuilderValidators.compose(validators),
              autocorrect: autoCorrect,
              obscureText: isPassword&&!showPassword,
              autofocus: autoFocus,
              keyboardType: keyBoardType,
              focusNode: focusNode,
              maxLines: isPassword ? 1 : maxLines,
              minLines: isPassword ? 1 : minLines,
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
                  suffixIcon: getSuffixIcon()
              ),
            ),
          );
        });
  }

  Widget getSuffixIcon(){
    if(isPassword){
      return ValueListenableBuilder(
          valueListenable: _showPassWordNotifier,
          builder: (context,showPassWord,child){
            final icon = showPassWord ?  Icons.visibility_off : Icons.visibility;
            return IconButton(onPressed: (){
              _showPassWordNotifier.value = !_showPassWordNotifier.value;
            },
            icon: Icon(icon));
          }
      );
    }

    return ValueListenableBuilder<bool>(
        valueListenable: _isEmptyTextNotifier,
        builder: (context,emptyText,child){
          if(emptyText == true) return const SizedBox();
          return IconButton(
              onPressed: (){
                controller.clear();
              },
              icon: const Icon(Icons.clear)
          );
        }
    );

  }

}
