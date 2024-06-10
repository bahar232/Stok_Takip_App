
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'basic_invoice_item_dto.freezed.dart';
part 'basic_invoice_item_dto.g.dart';

@freezed
class BasicInvoiceItemDto with _$BasicInvoiceItemDto{
  const factory BasicInvoiceItemDto({
    required int dovizTuru,
    required double dovizKuru,
    required int malzemeId,
    required double miktar,
    required double kdvOrani,
    required double fiyat,
    required String brm,
    required int brmSira,
    required double carpan,
    required double isk1,
    required double isk2,
    required double isk3,
    required double isk4,
    required String satirAciklama,
    required String depoKodu,
    required int isTanimId,
    required int isTanimKalemDetayId
  }) = _BasicInvoiceItemDto;

  factory BasicInvoiceItemDto.fromJson(Map<String, Object?> json) => _$BasicInvoiceItemDtoFromJson(json);
}