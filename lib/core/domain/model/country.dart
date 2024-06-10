

import 'package:equatable/equatable.dart';
import 'package:quantumapp/core/domain/model/i_select_cat_item.dart';

class Country extends Equatable implements ISelectCatItem{

  final int id;
  final String dualCode;
  final String tripletCode;
  final String name;
  final String phoneCode;

  const Country({
    required this.id,
    required this.dualCode,
    required this.tripletCode,
    required this.name,
    required this.phoneCode
  });

  @override
  String get title => name;

  @override
  int get selectCatId => id;

  @override
  List<Object?> get props => [
    id, dualCode, tripletCode, name, phoneCode
  ];
}