

import 'package:quantumapp/features/customers/shared/data/remote/dtos/customer_movement_dto/customer_movement_dto.dart';
import 'package:quantumapp/features/customers/shared/domain/models/customer_movement.dart';

extension CustomerMovementDtoExt on CustomerMovementDto{
  CustomerMovement toCustomerMovement(){
    return CustomerMovement(
      id: id,
      typeInfo: turuSozel,
      movementInfo: hareketModulSozel,
      date: tarih,
      customerName: cariAdi,
      customerCode: cariKodu,
      description: aciklama,
      total: tutar,
      currencyTypeInfo: dovizTuruSozel,
      exchangeRate: dovizKuru,
      currencyTotal: dovizTutar,
      invoiceNo: belgeNo,
      invoiceId: hareketBelgeId,
      movementId: hareketModul,
      registerDate: kayitTarihi,
      maturityDate: vade
    );
  }
}
