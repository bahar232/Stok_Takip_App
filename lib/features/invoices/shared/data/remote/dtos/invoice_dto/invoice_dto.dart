
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'invoice_dto.freezed.dart';
part 'invoice_dto.g.dart';

@freezed
class InvoiceDto with _$InvoiceDto{
  const factory InvoiceDto({
    required int belgeId,
    required int turu,
    required String sirketKodu,
    required String tarih,
    required int cariId,
    required double brut,
    required double kdv,
    required double genelToplam,
    required int plasiyerId,
    required String no
  }) = _InvoiceDto;

  factory InvoiceDto.fromJson(Map<String, Object?> json) => _$InvoiceDtoFromJson(json);
}