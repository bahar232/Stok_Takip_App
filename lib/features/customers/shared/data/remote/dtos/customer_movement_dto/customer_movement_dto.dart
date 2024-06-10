import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'customer_movement_dto.freezed.dart';
part 'customer_movement_dto.g.dart';

@freezed
class CustomerMovementDto with _$CustomerMovementDto{
  const factory CustomerMovementDto({
    required int id,
    required String turuSozel,
    required String hareketModulSozel,
    required DateTime? tarih,
    required String cariAdi,
    required String cariKodu,
    required String aciklama,
    required double? tutar,
    required String dovizTuruSozel,
    required double? dovizKuru,
    required double? dovizTutar,
    required String belgeNo,
    required int? hareketBelgeId,
    required int? hareketModul,
    required DateTime? kayitTarihi,
    required DateTime? vade
  }) = _CustomerMovementDto;

  factory CustomerMovementDto.fromJson(Map<String, Object?> json) => _$CustomerMovementDtoFromJson(json);
}