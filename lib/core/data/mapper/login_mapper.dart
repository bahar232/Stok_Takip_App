

import 'package:quantumapp/core/data/remote/dtos/login_dto/login_dto.dart';
import 'package:quantumapp/core/domain/model/login_model/login_model.dart';

extension LoginExt on LoginModel{
  LoginDto toLoginDto(){
    return LoginDto(
      kullaniciAdi: userName,
      sifre: password
    );
  }
}