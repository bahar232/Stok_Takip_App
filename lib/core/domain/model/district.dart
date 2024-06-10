

import 'package:equatable/equatable.dart';
import 'package:quantumapp/core/domain/model/i_select_cat_item.dart';

class District extends Equatable implements ISelectCatItem{

  final int id;
  final String name;
  final String districtCode;
  final String cityPlateCode;

  const District({
    required this.id,
    required this.name,
    required this.districtCode,
    required this.cityPlateCode
  });

  @override
  String get title => name;

  @override
  int get selectCatId => id;

  @override
  List<Object?> get props => [
    id, name,districtCode,cityPlateCode
  ];
}