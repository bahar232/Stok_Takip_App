
import 'package:quantumapp/core/data/remote/dtos/sign_up_dto.dart';
import 'package:quantumapp/core/domain/model/sign_up_model/sign_up_model.dart';

extension SignUpExt on SignUpModel{
  SignUpDto toSignUpDto(){
    return SignUpDto(
      sifre: password,
      dovizTuru: currencyTypeModel.id,
      adres: address,
      il: city,
      ilce: district,
      ulke: country,
      kullaniciAdiSoyAdi: userNameAndSurname,
      kullaniciTc: userTC,
      kullaniciAdi: userName,
      sirketAdi: companyName,
      sirketTuru: companyTypeId,
      vergiNo: taxNo,
      vergiDairesi: taxOffice,
      yetkiliAdi: authorizedName,
      yetkiliSoyAdi: authorizedSurname,
      yetkiliTc: authorizedTC
    );
  }
}