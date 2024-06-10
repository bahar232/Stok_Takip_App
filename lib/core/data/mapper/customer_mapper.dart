
import 'package:quantumapp/core/data/remote/dtos/customer_dto/customer_dto.dart';
import 'package:quantumapp/features/customers/shared/domain/enums/account_type_enum.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';

extension CustomerDtoExt on CustomerDto{
  Customer toCustomer(){
    return Customer(
      id: cariId,
      name: adi,
      tckNo: tckNo,
      taxOffice: vergiDaire,
      taxNo: vergiNo,
      related: ilgili,
      district: ilce,
      currencyUnitId: dovizTuru,
      country: ulke,
      city: il,
      authorizedSurname: sahisSoyadi,
      authorizedName: sahisAdi,
      address: adres,
      accountType: AccountTypeEnum.from(turu),
      code: kodu,
      companyCode: sirketKodu,
      addingUserId: ekleyenKullaniciId,
      addingUserNameAndSurname: ekleyenKullaniciAdiSoyadi
    );
  }
}

extension CustomerExt on Customer{
  CustomerDto toCustomerDto(){
    return CustomerDto(
        cariId: id,
        adi: name,
        tckNo: tckNo,
        vergiDaire: taxOffice,
        vergiNo: taxNo,
        ilgili: related,
        ilce: district,
        dovizTuru: currencyUnitId,
        ulke: country,
        il: city,
        sahisSoyadi: authorizedSurname,
        sahisAdi: authorizedName,
        adres: address,
        turu: accountType.typeId,
        kodu: code,
        sirketKodu: companyCode,
        ekleyenKullaniciAdiSoyadi: addingUserNameAndSurname,
        ekleyenKullaniciId: addingUserId
    );
  }
}