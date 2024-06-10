

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'customer_movement.freezed.dart';

@freezed
class CustomerMovement with _$CustomerMovement{
  const factory CustomerMovement({
    required int id,
    required String typeInfo,
    required String movementInfo,
    required DateTime? date,
    required String customerName,
    required String customerCode,
    required String description,
    required double? total,
    required String currencyTypeInfo,
    required double? exchangeRate,
    required double? currencyTotal,
    required String invoiceNo,
    required int? invoiceId,
    required int? movementId,
    required DateTime? registerDate,
    required DateTime? maturityDate
  }) = _CustomerMovement;
}