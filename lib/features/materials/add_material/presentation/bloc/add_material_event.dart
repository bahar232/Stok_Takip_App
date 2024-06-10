
import 'package:image_picker/image_picker.dart';
import 'package:quantumapp/features/customers/add_customer/domain/model/add_customer_data.dart';
import 'package:quantumapp/features/customers/shared/domain/enums/account_type_enum.dart';
import 'package:quantumapp/core/domain/model/city.dart';
import 'package:quantumapp/core/domain/model/country.dart';
import 'package:quantumapp/core/domain/model/currency_type_model/currency_type_model.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';
import 'package:quantumapp/core/domain/model/district.dart';
import 'package:quantumapp/features/materials/add_material/domain/model/add_material_data.dart';
import 'package:quantumapp/features/materials/shared/domain/enums/material_type_enum.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_category_model.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';

abstract class IAddMaterialEvent {}

class AddMaterialEventLoadData extends IAddMaterialEvent{
  final MaterialModel? materialInit;
  AddMaterialEventLoadData({required this.materialInit});
}

class AddMaterialEventSetImage extends IAddMaterialEvent{
  final XFile xFile;
  AddMaterialEventSetImage({required this.xFile});
}

class AddMaterialEventSelectCategory extends IAddMaterialEvent{
  final MaterialCategoryModel categoryModel;
  AddMaterialEventSelectCategory({required this.categoryModel});
}

class AddMaterialEventSelectType extends IAddMaterialEvent{
  final MaterialTypeEnum materialType;
  AddMaterialEventSelectType({required this.materialType});
}

class AddMaterialEventSave extends IAddMaterialEvent{
  final AddMaterialData materialData;
  AddMaterialEventSave({required this.materialData});
}

class AddMaterialEventUpdate extends IAddMaterialEvent{
  final AddMaterialData materialData;
  final MaterialModel material;

  AddMaterialEventUpdate({
    required this.materialData,
    required this.material
  });
}


class AddMaterialEventClearMessage extends IAddMaterialEvent{}

class AddMaterialEventClearNavigateToBack extends IAddMaterialEvent{}
