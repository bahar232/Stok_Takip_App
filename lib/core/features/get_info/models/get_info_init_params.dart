

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'get_info_init_params.freezed.dart';

@freezed
class GetInfoInitParams with _$GetInfoInitParams{
  const factory GetInfoInitParams({
    String? country,
    int? currencyUnitId,
    String? city,
    String? district
  }) = _GetInfoInitParams;

  static GetInfoInitParams init(){
    return const GetInfoInitParams();
  }
}