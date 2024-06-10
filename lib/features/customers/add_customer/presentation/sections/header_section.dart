


import 'package:flutter/material.dart';
import 'package:quantumapp/features/customers/add_customer/presentation/add_customer_dialog_content.dart';

extension AddCustomerDialogContentHeaderExt on AddCustomerDialogContent{

  Widget getHeader(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 5,right: 5,top: 3,bottom: 13),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close)
            ),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(width: 48,)
        ],
      ),
    );
  }
}