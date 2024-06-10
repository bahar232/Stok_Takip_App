

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:quantumapp/core/presentation/components/text_field/custom_form_text_field.dart';

class SelectFormCategoryItem extends StatelessWidget {

  final String placeHolder;
  final String? title;
  final bool isEnabled;
  final void Function()? onTap;
  final Icon? leading;
  final String? error;
  final EdgeInsetsGeometry? padding;
  final AutovalidateMode autoValidateMode;
  final List<FormFieldValidator<String>> validators;

  const SelectFormCategoryItem({
    Key? key,
    required this.placeHolder,
    this.title,
    this.isEnabled = false,
    this.onTap,
    this.leading,
    this.error,
    this.padding,
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
    this.validators = const []
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final style = Theme.of(context).textTheme.titleMedium;

    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 11,horizontal: 1),
      child: FormBuilderTextField(
        name: title ?? placeHolder,
        readOnly: true,
        enabled: isEnabled,
        autovalidateMode: autoValidateMode,
        validator: FormBuilderValidators.compose(validators),
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
