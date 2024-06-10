

import 'package:quantumapp/features/materials/shared/data/remote/dtos/material_dto.dart';
import 'package:quantumapp/features/materials/shared/domain/enums/material_type_enum.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';

extension MaterialExt on MaterialModel{

  MaterialDto toMaterialDto(){
    return MaterialDto(
      adi: name,
      turu: typeEnum.typeId,
      malzemeId: id,
      kodu: code,
      kdv: vat,
      kategorikodu: categoryCode,
      alisKdv: purchaseVat,
      fiyatS1: sellingPrice,
      fiyatA1: purchasePrice,
      sirketKodu: companyCode,
      ekleyenKullaniciAdiSoyadi: addingUserNameAndSurname,
      ekleyenKullaniciId: addingUserId,
      duzeltenKullaniciAdiSoyadi: editingUserNameAndSurname,
      duzeltenKullaniciId: editingUserId,
      brm1: brm
    );
  }

}


extension MaterialDtoExt on MaterialDto{

  MaterialModel toMaterialModel(){
    return MaterialModel(
      name: adi,
      typeEnum: MaterialTypeEnum.from(turu),
      id: malzemeId,
      code: kodu,
      vat: kdv,
      categoryCode: kategorikodu,
      purchaseVat: alisKdv,
      sellingPrice: fiyatS1,
      purchasePrice: fiyatA1,
      companyCode: sirketKodu,
      addingUserNameAndSurname: ekleyenKullaniciAdiSoyadi,
      addingUserId: ekleyenKullaniciId,
      editingUserNameAndSurname: duzeltenKullaniciAdiSoyadi,
      editingUserId: duzeltenKullaniciId,
      brm: brm1 ?? ""
    );
  }

}