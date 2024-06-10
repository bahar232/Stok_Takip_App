//
// import 'package:collection/collection.dart';
// import 'package:quantumapp/core/domain/model/i_select_cat_item.dart';
//
// enum SupplyTypeEnum implements ISelectCatItem{
//   purchaseOnTerms(
//       typeId: 0,
//       title: "Termin ile Satın Alma"
//   ),
//   manufacturingProduction(
//       typeId: 1,
//       title: "Üretim İmalet ile"
//   ),
//   outsourcing(
//       typeId: 2,
//       title: "Fason"
//   ),
//   other(
//       typeId: 3,
//       title: "Diğer"
//   );
//
//   const SupplyTypeEnum({required this.typeId, required this.title});
//
//   @override
//   final String title;
//   final int typeId;
//
//   @override
//   get id => typeId;
//
//   static SupplyTypeEnum get defaultType => SupplyTypeEnum.purchaseOnTerms;
//
//   static SupplyTypeEnum from(int typeId){
//     final type = SupplyTypeEnum.values.firstWhereOrNull((e) => e.typeId == typeId);
//     return type ?? defaultType;
//   }
//
// }