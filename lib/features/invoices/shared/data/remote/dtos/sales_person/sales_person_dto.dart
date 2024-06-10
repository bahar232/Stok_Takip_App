

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'sales_person_dto.freezed.dart';
part 'sales_person_dto.g.dart';

@freezed
class SalesPersonDto with _$SalesPersonDto{
  const factory SalesPersonDto({
    required int? plasiyerId,
    required String kodu,
    required String? adi,
    required bool aktif,
    required String sirketKodu
  }) = _SalesPersonDto;

  factory SalesPersonDto.fromJson(Map<String, Object?> json) => _$SalesPersonDtoFromJson(json);
}