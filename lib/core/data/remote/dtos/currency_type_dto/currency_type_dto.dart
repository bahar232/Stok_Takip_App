

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'currency_type_dto.freezed.dart';
part 'currency_type_dto.g.dart';

@freezed
class CurrencyTypeDto with _$CurrencyTypeDto{

  const factory CurrencyTypeDto({
    required int id,
    required int dovizTuru,
    required String aciklama,
    @JsonKey(name: "merkezBankasıKodu") required String merkezBankasiKodu
  }) = _CurrencyTypeDto;

  factory CurrencyTypeDto.fromJson(Map<String, Object?> json) => _$CurrencyTypeDtoFromJson(json);
}