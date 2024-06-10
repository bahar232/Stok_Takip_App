
import 'package:flutter/material.dart';
import 'package:quantumapp/features/graph_test/model/product_info.dart';

class ProductUtil{
  static const productsInfo = [
    ProductInfo(total: 70, name: "Computer"),
    ProductInfo(total: 50, name: "Mouse"),
    ProductInfo(total: 20, name: "Phone"),
  ];

  static const productsInfoForPie = [
    ProductInfo(total: 60, name: "Computer",color: Colors.blue),
    ProductInfo(total: 30, name: "Mouse", color: Colors.green),
    ProductInfo(total: 10, name: "Phone", color: Colors.red),
  ];
}