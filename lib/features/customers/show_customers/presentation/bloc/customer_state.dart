

import 'package:equatable/equatable.dart';
import 'package:quantumapp/core/domain/model/customer/customer.dart';



import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'customer_state.freezed.dart';

@freezed
class CustomerState with _$CustomerState{

  const CustomerState._();

  const factory CustomerState({
    String? message,
    required List<Customer> items,
    required List<Customer> filteredItems,
    required bool isLoading,
    required String searchQuery,
    required bool isSearchBarVisible
  }) = _CustomerState;

  static CustomerState init(){
    return const CustomerState(
      items: [],
      filteredItems: [],
      isLoading: false,
      searchQuery: "",
      isSearchBarVisible: false
    );
  }

  List<Customer> get currentItems{
    if(searchQuery.isEmpty) return items;
    return filteredItems;
  }
}