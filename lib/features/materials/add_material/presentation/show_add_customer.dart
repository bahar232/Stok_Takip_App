
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/features/materials/add_material/domain/model/add_material_data.dart';
import 'package:quantumapp/features/materials/add_material/presentation/add_customer_dialog_content.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';
import 'bloc/add_material_bloc.dart';
import 'bloc/add_material_event.dart';


void showUpdateMaterial(BuildContext context,{
  required MaterialModel material,
  void Function()? onSuccessUpdated,
}){
  _showMaterialHandler(
    context,
    title: "Malzeme Güncelle",
    material: material,
    btnLabel: "Güncelle",
    onSuccessResult: onSuccessUpdated,
    onBtnClick: (data){
      context.read<AddMaterialBloc>()
          .add(AddMaterialEventUpdate(materialData: data,material: material));
    },
  );
}



void showAddMaterial(BuildContext context,{ void Function()? onSuccessResult}){

  _showMaterialHandler(
    context,
    title: "Malzeme Ekle",
    btnLabel: "Kaydet",
    onSuccessResult: onSuccessResult,
    onBtnClick: (data){
      context.read<AddMaterialBloc>()
          .add(AddMaterialEventSave(materialData: data));
    },
  );
}


void _showMaterialHandler(BuildContext context,{
  required String title,
  required String btnLabel,
  required void Function(AddMaterialData) onBtnClick,
  void Function()? onSuccessResult,
  MaterialModel? material
}){

  showModalBottomSheet(
      isScrollControlled: true,
      useSafeArea: true,
      context: context,
      builder: (context){
        return AddMaterialDialogContent(
          title: title,
          btnLabel: btnLabel,
          onBtnClick: onBtnClick,
          onSuccessResult: onSuccessResult,
          material: material,
        );
      }
  );
}
