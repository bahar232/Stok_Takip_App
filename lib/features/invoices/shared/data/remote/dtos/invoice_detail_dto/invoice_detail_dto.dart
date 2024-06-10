
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'invoice_detail_dto.freezed.dart';
part 'invoice_detail_dto.g.dart';

@freezed
class InvoiceDetailDto with _$InvoiceDetailDto{
  const factory InvoiceDetailDto({
    required int id,
    required int belgeId,
    required String sirketKodu,
    required int turu,
    required String tarih,
    required String no,
    required int malzemeId,
    required double miktar,
    required double brmFiyati,
    required double brut,
    required double kdv,
    required double kdvOran,
    required double genelTutar,
    required int cariHesapId
  }) = _InvoiceDetailDto;

  factory InvoiceDetailDto.fromJson(Map<String, Object?> json) => _$InvoiceDetailDtoFromJson(json);
}