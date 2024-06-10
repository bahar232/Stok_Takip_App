// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyTypeDto _$$_CurrencyTypeDtoFromJson(Map<String, dynamic> json) =>
    _$_CurrencyTypeDto(
      id: json['id'] as int,
      dovizTuru: json['dovizTuru'] as int,
      aciklama: json['aciklama'] as String,
      merkezBankasiKodu: json['merkezBankasıKodu'] as String,
    );

Map<String, dynamic> _$$_CurrencyTypeDtoToJson(_$_CurrencyTypeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dovizTuru': instance.dovizTuru,
      'aciklama': instance.aciklama,
      'merkezBankasıKodu': instance.merkezBankasiKodu,
    };
