// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MaterialCategoryDto _$$_MaterialCategoryDtoFromJson(
        Map<String, dynamic> json) =>
    _$_MaterialCategoryDto(
      id: json['id'] as int?,
      sirketKodu: json['sirketKodu'] as String,
      kategorikodu: json['kategorikodu'] as String,
      adi: json['adi'] as String,
    );

Map<String, dynamic> _$$_MaterialCategoryDtoToJson(
        _$_MaterialCategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sirketKodu': instance.sirketKodu,
      'kategorikodu': instance.kategorikodu,
      'adi': instance.adi,
    };
