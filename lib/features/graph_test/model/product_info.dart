
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ProductInfo extends Equatable{
  final double total;
  final String name;
  final Color? color;

  const ProductInfo({required this.total, required this.name,this.color});

  @override
  List<Object?> get props => [total, name,color];
}