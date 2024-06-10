

import 'package:flutter/material.dart';
import 'package:quantumapp/core/presentation/handlers/duplicate_dialog_handler.dart';

void showCustomAlertDialog(BuildContext context,{
  String? title,
  String? content,
  void Function()? btnApproved,
  void Function()? btnCancelled,
  void Function()? onClosed,
  String? negativeLabel,
  String? positiveLabel,
  bool useRootNavigator = false,
  bool dismissible = false,
  bool showCancelBtn = true,
  bool showApproveBtn = true
}){

  duplicateDialogHandler(func: ()async{

    List<Widget> getButtons(){
      List<Widget> children = [
        const SizedBox(width: 8,),
      ];

      if(showCancelBtn){
        children.add(
          Expanded(
            child: TextButton(
              onPressed: () {
                Navigator.of(context,rootNavigator: useRootNavigator).pop();
                btnCancelled?.call();
              },
              child: Text(negativeLabel??"Iptal et"),
            ),
          )
        );
      }
      if(showApproveBtn || showCancelBtn){
        children.add(const SizedBox(width: 4,),);
      }
      if(showApproveBtn){
        children.add(
          Expanded(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context,rootNavigator: useRootNavigator).pop();
                  btnApproved?.call();
                },
                child: Text(positiveLabel??"Onayla"),
              )
          )
        );
      }
      children.add(const SizedBox(width: 8,),);
      return children;
    }

    List<Widget> getChildren() {
      List<Widget> children = [];
      if (title != null) {
        children.add(Padding(
            padding: const EdgeInsets.only(top: 11,bottom: 13),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            )));
      }
      if (content != null) {
        children.add(Padding(
            padding: const EdgeInsets.only(top: 7,bottom: 13),
            child: Text(
              content,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1,
            )));
      }
      children.add(Padding(
        padding: const EdgeInsets.only(bottom: 7,top: 13),
        child: Row(
          children: getButtons()
        ),
      ));
      return children;
    }

    showDialog(
        context: context,
        useRootNavigator: useRootNavigator,
        useSafeArea: true,
        barrierDismissible: dismissible,
        builder: (context){
          return WillPopScope(
            onWillPop: ()async{
              return Future.value(dismissible);
            },
            child: Dialog(
              insetPadding: const EdgeInsets.symmetric(horizontal: 7),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1.5,vertical: 7),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: getChildren(),
                  ),
                ),
              ),
            ),
          );
        }
    );
  }).then((value){
    onClosed?.call();
  });

}