
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';

abstract class IMaterialEvent {}

class MaterialEventSetQuery extends IMaterialEvent{
  final String query;
  MaterialEventSetQuery({required this.query});
}

class MaterialEventSetSearchBarVisibility extends IMaterialEvent{
  final bool isVisible;
  MaterialEventSetSearchBarVisibility({required this.isVisible});
}

class MaterialEventListenQueryChange extends IMaterialEvent{}


class MaterialEventClearMessage extends IMaterialEvent{}

class MaterialEventLoadData extends IMaterialEvent{}

class MaterialEventDelete extends IMaterialEvent{
  final MaterialModel materialModel;
  MaterialEventDelete({required this.materialModel});
}