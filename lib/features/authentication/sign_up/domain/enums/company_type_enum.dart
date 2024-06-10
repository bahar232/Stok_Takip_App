

import 'package:quantumapp/core/domain/model/i_select_cat_item.dart';

enum CompanyTypeEnum implements ISelectCatItem{
  individual(
    typeId: 0,
    title: "Gerçek Kişi(Şahıs Şirket)"
  ),
  legalEntity(
    typeId: 1,
    title: "Tüzel Kişi(Ltd., Aş., Kol., Koll. Şirket)"
  );

  const CompanyTypeEnum({required this.title, required this.typeId});

  final int typeId;
  @override
  final String title;

  @override
  int get selectCatId => typeId;

  static CompanyTypeEnum from(int typeId){
    if(typeId == CompanyTypeEnum.individual.typeId){
      return CompanyTypeEnum.individual;
    }
    return CompanyTypeEnum.legalEntity;
  }
}