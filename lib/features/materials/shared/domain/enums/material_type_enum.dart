
import 'package:quantumapp/core/domain/model/i_select_cat_item.dart';
import 'package:collection/collection.dart';

enum MaterialTypeEnum implements ISelectCatItem{
  commercialMaterial(
      typeId: 0,
      title: "Ticari Malzeme"
  ),
  rawMaterial(
      typeId: 1,
      title: "Ham Madde"
  ),
  semiProcessed(
      typeId: 2,
      title: "Yarı Mamül"
  ),
  processed(
      typeId: 3,
      title: "Mamül"
  ),
  serviceCard(
      typeId: 4,
      title: "Hizmet Kartı"
  ),
  categoryTree(
      typeId: 5,
      title: "Sınıf Ağacı"
  ),
  classificationCategoryService(
      typeId: 6,
      title: "Sınıf Ağacı Hizmet"
  ),
  depositMaterial(
      typeId: 7,
      title: "Depozitolu Malzeme"
  ),
  scrapProduct(
      typeId: 8,
      title: "Hurda Ürün"
  ),
  consumable(
      typeId: 9,
      title: "Sarf Malzemesi"
  ),
  draftMaterial(
      typeId: 10,
      title: "Taslak Malzeme"
  ),
  ;

  const MaterialTypeEnum({required this.typeId, required this.title});

  @override
  final String title;
  final int typeId;

  @override
  get selectCatId => typeId;

  static MaterialTypeEnum get defaultType => MaterialTypeEnum.commercialMaterial;

  static MaterialTypeEnum from(int typeId){

    final type = MaterialTypeEnum.values.firstWhereOrNull((e) => e.typeId == typeId);
    return type ?? defaultType;
  }

}