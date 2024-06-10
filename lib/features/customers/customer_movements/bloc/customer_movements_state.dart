


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:quantumapp/features/customers/shared/domain/models/customer_movement.dart';
part 'customer_movements_state.freezed.dart';

@freezed
class CustomerMovementsState with _$CustomerMovementsState{
  const factory CustomerMovementsState({
    required bool isLoading,
    required List<CustomerMovement> items,
    String? message
  }) = _CustomerMovementsState;

  static CustomerMovementsState init(){
    return const CustomerMovementsState(
      isLoading: false,
      items: []
    );
  }
}