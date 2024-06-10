// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Auth _$$_AuthFromJson(Map<String, dynamic> json) => _$_Auth(
      id: json['id'] as int,
      userName: json['userName'] as String,
      nameSurname: json['nameSurname'] as String,
      companyCode: json['companyCode'] as String,
      token: json['token'] as String,
      tokenExpireDate: DateTime.parse(json['tokenExpireDate'] as String),
    );

Map<String, dynamic> _$$_AuthToJson(_$_Auth instance) => <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'nameSurname': instance.nameSurname,
      'companyCode': instance.companyCode,
      'token': instance.token,
      'tokenExpireDate': instance.tokenExpireDate.toIso8601String(),
    };
