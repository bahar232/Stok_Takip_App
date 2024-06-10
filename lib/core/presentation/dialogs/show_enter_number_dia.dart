
import 'package:flutter/material.dart';
import 'package:quantumapp/core/presentation/components/text_field/custom_text_field.dart';

void showEnterNumberDia(BuildContext context,{
  required String title,
  String? label,
  int? currentValue,
  int minValue = 0,
  int? maxValue,
  void Function(int)? onApproved
}){
  final textEditingController = TextEditingController(text: currentValue.toString());
  final errorNotifier = ValueNotifier<String?>(null);
  showDialog(context: context,
      builder: (context){
        return AlertDialog(
          title: Text(title),
          content: ValueListenableBuilder(
              valueListenable: errorNotifier,
              builder: (context, errorText,child){
                return CustomTextField(
                  controller: textEditingController,
                  label: label,
                  errorText: errorText,
                  keyBoardType: TextInputType.number,
                );
              }
          ),
          actions: [
            TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: const Text("Iptal")
            ),
            TextButton(onPressed: (){
              final text = textEditingController.text.trim();
              if(text.isEmpty){
                errorNotifier.value = "Boş olamaz";
                return;
              }
              final value = int.tryParse(text);
              if(value == null){
                errorNotifier.value = "Geçerli bir sayı giriniz";
                return;
              }
              if(value < minValue){
                errorNotifier.value = "$minValue değerinden küçük olamaz";
                return;
              }
              if(maxValue!=null && value > maxValue){
                errorNotifier.value = "$maxValue değerinden büyük olamaz";
                return;
              }
              onApproved?.call(value);
              Navigator.pop(context);
            }, child: const Text("Onayla")),
          ],
        );
      }
  ).then((value){
    textEditingController.clear();
    errorNotifier.dispose();
  });
}