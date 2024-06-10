
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import 'package:quantumapp/features/customers/customer_movements/customer_movements_page.dart';
import 'package:quantumapp/features/customers/shared/domain/models/customer_movement.dart';
import 'package:expandable_datatable/expandable_datatable.dart';


extension CustomerMovementsPageTableContentExt on CustomerMovementsPage{

  List<ExpandableColumn<dynamic>> getHeaders(){
    return [
      ExpandableColumn<String>(columnTitle: "Belge No", columnFlex: 2),
      ExpandableColumn<String>(columnTitle: "Açıklama", columnFlex: 2),
      ExpandableColumn<double>(columnTitle: "Tutar", columnFlex: 2),
      ExpandableColumn<String>(columnTitle: "Turu Sözel", columnFlex: 2),
      ExpandableColumn<String>(columnTitle: "Cari Adi", columnFlex: 1),
      ExpandableColumn<String>(columnTitle: "Vade", columnFlex: 1),
      ExpandableColumn<String>(columnTitle: "Hareket Modul Sozel", columnFlex: 1),
      ExpandableColumn<String>(columnTitle: "Doviz Turu Yazi", columnFlex: 1),

      // ExpandableColumn<String>(columnTitle: "Gender", columnFlex: 2),
      // ExpandableColumn<String>(columnTitle: "Email", columnFlex: 4),
    ];
  }

  ExpandableRow getRow(CustomerMovement item) {
    return ExpandableRow(cells: [
      ExpandableCell<String>(columnTitle: "Belge No", value: item.invoiceNo),
      ExpandableCell<String>(columnTitle: "Açıklama", value: item.description),
      ExpandableCell<double>(columnTitle: "Tutar", value: item.total),
      ExpandableCell<String>(columnTitle: "Turu Sözel", value: item.typeInfo),
      ExpandableCell<String>(columnTitle: "Cari Adi", value: item.customerName),
      ExpandableCell<String>(columnTitle: "Vade", value: item.maturityDate?.toIso8601String()),
      ExpandableCell<String>(columnTitle: "Hareket Modul Sozel", value: item.movementInfo),
      ExpandableCell<String>(columnTitle: "Doviz Turu Yazi", value: item.currencyTypeInfo),

    ]);
  }
  List<DataColumn2> getDataColumns2(){
    return [
      const DataColumn2(
        label: Text("Belge No"),
        size: ColumnSize.M,
        numeric: false
      ),
      const DataColumn2(
        label: Text("Turu Sözel"),
        size: ColumnSize.L
      ),
      const DataColumn2(
        label: Text("Tutar"),
        size: ColumnSize.M,
        numeric: true
      ),
      const DataColumn2(
        label: Text(""),
        size: ColumnSize.S,
      )
    ];
  }

  List<DataRow2> getDataRows2(BuildContext context,{
    required List<CustomerMovement> items,
  }){
    final rows = <DataRow2>[];

    for(final item in items){
      final row = DataRow2(
        cells: _getDataCell2(context, item),
        selected: false,
      );
      rows.add(_getTestRow());
      rows.add(row);
      // rows.add(_getSpaceRow());
    }
    return rows;
  }

  DataRow2 _getTestRow(){
    return DataRow2(
      cells: [
        DataCell(
            Text(
              "test"
            )
        ),
      ]
    );
  }

  List<DataCell> _getDataCell2(BuildContext context,CustomerMovement item){
    final style = Theme.of(context).textTheme.bodyMedium;
    return [
      DataCell(
        Text(
          item.invoiceNo,
          style: style,
        )
      ),
      DataCell(
        Text(
            item.typeInfo,
            style: style
        ),
      ),
      DataCell(
        Text("${item.total}",
          style: style,
        )
      ),
      DataCell(
        const Icon(Icons.more_vert),
        onTap: (){
          // handleBottomMenu(context, item);
        }
      )
    ];
  }
}