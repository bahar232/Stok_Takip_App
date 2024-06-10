


import 'package:equatable/equatable.dart';

class CatSelectorModel<T> extends Equatable{
  final List<T> items;
  final T? selected;
  final bool isEnabled;

  const CatSelectorModel({required this.items, required this.selected, required this.isEnabled});

  @override
  List<Object?> get props => [items, selected, isEnabled];
}