

import 'package:flutter/material.dart';
import 'package:quantumapp/features/materials/show_materials/presentation/show_materials_page.dart';

extension ShowMaterialsPageComponentsExt on ShowMaterialsPage{

  Widget getLoadingWidget(BuildContext context){
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 50),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget getEmptyCustomerMessage(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Center(
        child: Text(
          "Herhangi bir malzeme bulunamadı",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}