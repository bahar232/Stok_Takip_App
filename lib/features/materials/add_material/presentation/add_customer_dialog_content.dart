import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:quantumapp/core/util/show_toast.dart';
import 'package:quantumapp/features/materials/add_material/domain/model/add_material_data.dart';
import 'package:quantumapp/features/materials/add_material/presentation/sections/content_section.dart';
import 'package:quantumapp/features/materials/add_material/presentation/sections/header_section.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:extended_image/extended_image.dart';

import 'bloc/add_material_bloc.dart';
import 'bloc/add_material_event.dart';
import 'bloc/add_material_state.dart';

class AddMaterialDialogContent extends StatelessWidget {


  final String title;
  final String btnLabel;
  final void Function(AddMaterialData) onBtnClick;
  final void Function()? onSuccessResult;
  final MaterialModel? material;

  late final TextEditingController nameEditingController;
  late final TextEditingController codeEditingController;
  late final TextEditingController sellingPriceEditingController;
  late final TextEditingController purchasePriceEditingController;
  late final TextEditingController vatEditingController;
  late final TextEditingController purchaseVatEditingController;

  late final GlobalKey<FormBuilderState> formKey;

  final ImagePicker _picker = ImagePicker();

  AddMaterialDialogContent({
    Key? key,
    required this.title,
    required this.btnLabel,
    required this.onBtnClick,
    this.onSuccessResult,
    this.material
  }) : super(key: key){

    nameEditingController = TextEditingController(text: material?.name);
    codeEditingController = TextEditingController(text: material?.code);
    sellingPriceEditingController = TextEditingController(text: material?.sellingPrice.toString());
    purchasePriceEditingController = TextEditingController(text: material?.purchasePrice.toString());
    vatEditingController = TextEditingController(text: material?.vat.toString());
    purchaseVatEditingController = TextEditingController(text: material?.purchaseVat.toString());

    formKey = GlobalKey<FormBuilderState>();
  }

  @override
  Widget build(BuildContext context){

    final bloc = context.read<AddMaterialBloc>();
    bloc.add(AddMaterialEventLoadData(materialInit: material));

    return BlocListener<AddMaterialBloc,AddMaterialState>(
      listenWhen: (prevState, nextState){
        return prevState.navigateToBackWithSuccess != nextState.navigateToBackWithSuccess;
      },
      listener: (context, state){
        final navigateToBack = state.navigateToBackWithSuccess;
        if(navigateToBack){
          onSuccessResult?.call();
          bloc.add(AddMaterialEventClearNavigateToBack());
          Navigator.pop(context);
        }
      },
      child: BlocListener<AddMaterialBloc,AddMaterialState>(
        listenWhen: (prevState, nextState){
          return prevState.message != nextState.message;
        },
        listener: (context, state){
          final message = state.message;
          if(message!=null){
            ToastUtils.showLongToast(message);
            context.read<AddMaterialBloc>()
                .add(AddMaterialEventClearMessage());
          }
        },
        child: DraggableScrollableSheet(
            initialChildSize: 0.99,
            minChildSize: 0.3,
            maxChildSize: 1.0,
            expand: false,
            builder: (context, controller){

              return Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      getHeader(context),
                      Expanded(
                        child: BlocBuilder<AddMaterialBloc,AddMaterialState>(
                          builder: (context, state){
                            if(state.isLoading){
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            return SingleChildScrollView(
                              controller: controller,
                              child: getContent(),
                            );
                          },
                        ),
                      ),
                      getButton()
                    ],
                  ),
                ),
              );
            }
        ),
      ),
    );
  }

  Widget getImage(){
    return BlocSelector<AddMaterialBloc,AddMaterialState,File?>(
      selector: (state) => state.selectedFile,
      builder: (context, selectedImage){

        if(selectedImage == null){
          return IconButton(
            onPressed: (){
              _selectImage(context);
            },
            icon: const Icon(
              Icons.add_a_photo,
              size: 100,
            ),
          );
        }
        return GestureDetector(
            onTap: (){
              _selectImage(context);
            },
            child: ExtendedImage.file(
              selectedImage,
              borderRadius: BorderRadius.circular(13),
              shape: BoxShape.rectangle,
              height: 100,
              width: 150,
            )
        );

      },
    );
  }

  Future<void> _selectImage(BuildContext context)async{
    final bloc = context.read<AddMaterialBloc>();
    var file = await _picker.pickImage(source: ImageSource.gallery);
    if(file!=null){
      bloc.add(AddMaterialEventSetImage(xFile: file));
    }
  }


  Widget getButton(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: BlocBuilder<AddMaterialBloc,AddMaterialState>(
        builder: (context, state){
          return FilledButton(
            onPressed: (){
              formKey.currentState?.validate();
              if(formKey.currentState?.isValid == true){
                final data = getCustomerData(state);
                if(data!=null){
                  onBtnClick(data);
                }else{
                  ToastUtils.showLongToast("Bilinmeyen bir hata oluştu");
                }
              }
            },
            child: Text(btnLabel),
          );
        },
      ),
    );
  }


  AddMaterialData? getCustomerData(AddMaterialState state){
    try{
      return AddMaterialData(
          code: codeEditingController.text,
          id: material?.id ?? 0,
          selectedType: state.selectedType!,
          selectedCategory: state.selectedCategory!,
          vat: double.parse(vatEditingController.text.trim()),
          name: nameEditingController.text,
          sellingPrice: double.parse(sellingPriceEditingController.text.trim()),
          purchasePrice: double.parse(purchasePriceEditingController.text.trim()),
          purchaseVat: double.parse(purchaseVatEditingController.text.trim())
      );
    }catch(e){
      return null;
    }
  }

}



