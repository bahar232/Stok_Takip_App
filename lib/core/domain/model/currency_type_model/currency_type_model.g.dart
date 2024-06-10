// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyTypeModel _$$_CurrencyTypeModelFromJson(Map<String, dynamic> json) =>
    _$_CurrencyTypeModel(
      id: json['id'] as int,
      currencyType: json['currencyType'] as int,
      description: json['description'] as String,
      shortCode: json['shortCode'] as String,
    );

Map<String, dynamic> _$$_CurrencyTypeModelToJson(
        _$_CurrencyTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currencyType': instance.currencyType,
      'description': instance.description,
      'shortCode': instance.shortCode,
    };
