

import 'package:equatable/equatable.dart';
import 'package:quantumapp/core/domain/model/i_select_cat_item.dart';

class City extends Equatable implements ISelectCatItem{

  final int id;
  final String name;
  final int? plateNo;
  final int? phoneCode;
  final String countryCode;

  const City({
    required this.id,
    required this.name,
    required this.plateNo,
    required this.phoneCode,
    required this.countryCode
  });

  @override
  List<Object?> get props => [
    id, name,plateNo,phoneCode, countryCode
  ];

  @override
  String get title => name;

  @override
  int get selectCatId => id;
}