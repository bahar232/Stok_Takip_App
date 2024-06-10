// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_image_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MaterialImageDto _$$_MaterialImageDtoFromJson(Map<String, dynamic> json) =>
    _$_MaterialImageDto(
      id: json['id'] as int,
      malzemeId: json['malzemeId'] as int,
      sirketKodu: json['sirketKodu'] as String,
      img1: const Uint8ListConverter().fromJson(json['img1'] as String?),
    );

Map<String, dynamic> _$$_MaterialImageDtoToJson(_$_MaterialImageDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'malzemeId': instance.malzemeId,
      'sirketKodu': instance.sirketKodu,
      'img1': const Uint8ListConverter().toJson(instance.img1),
    };
