

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../basic_invoice_item_dto/basic_invoice_item_dto.dart';
part 'invoice_save_dto.freezed.dart';
part 'invoice_save_dto.g.dart';

@freezed
class InvoiceSaveDto with _$InvoiceSaveDto{
  const factory InvoiceSaveDto({
    required String tarih,
    required int turu,
    required String vade,
    required String belgeNo,
    required String no,
    required String genelAciklama,
    required int cariId,
    required int plasiyerId,
    required int bankaId,
    required List<BasicInvoiceItemDto> kalemler,
    required int subeId
  }) = _InvoiceSaveDto;

  factory InvoiceSaveDto.fromJson(Map<String, Object?> json) => _$InvoiceSaveDtoFromJson(json);
}