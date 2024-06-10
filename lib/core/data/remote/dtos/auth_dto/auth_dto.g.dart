// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthDto _$$_AuthDtoFromJson(Map<String, dynamic> json) => _$_AuthDto(
      id: json['id'] as int,
      kullaniciAdi: json['kullaniciAdi'] as String,
      adiSoyadi: json['adiSoyadi'] as String,
      aktifSirket: json['aktifSirket'] as String,
      token: json['token'] as String,
      tokenExpireDate: DateTime.parse(json['tokenExpireDate'] as String),
    );

Map<String, dynamic> _$$_AuthDtoToJson(_$_AuthDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kullaniciAdi': instance.kullaniciAdi,
      'adiSoyadi': instance.adiSoyadi,
      'aktifSirket': instance.aktifSirket,
      'token': instance.token,
      'tokenExpireDate': instance.tokenExpireDate.toIso8601String(),
    };
