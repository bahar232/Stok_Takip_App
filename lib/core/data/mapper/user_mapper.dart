

import 'package:quantumapp/core/data/remote/dtos/auth_dto/auth_dto.dart';
import 'package:quantumapp/core/domain/model/auth/auth.dart';

extension AuthDtoExt on AuthDto{
  Auth toAuth(){
    return Auth(
      id: id,
      companyCode: aktifSirket,
      nameSurname: adiSoyadi,
      userName: kullaniciAdi,
      token: token,
      tokenExpireDate: tokenExpireDate
    );
  }
}

