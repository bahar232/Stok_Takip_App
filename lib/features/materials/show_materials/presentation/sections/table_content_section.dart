
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/util/show_toast.dart';
import 'package:quantumapp/features/materials/shared/domain/model/material_model.dart';
import 'package:quantumapp/features/materials/show_materials/presentation/bloc/material_bloc.dart';
import 'package:quantumapp/features/materials/show_materials/presentation/bloc/materials_state.dart';
import 'package:quantumapp/features/materials/show_materials/presentation/sections/components_section.dart';
import 'package:quantumapp/features/materials/show_materials/presentation/show_materials_page.dart';

extension ShowMaterialsPageTableContentExt on ShowMaterialsPage{

  Widget getTableContent(){
    return BlocBuilder<MaterialBloc,MaterialsState>(
      builder: (context, state){
        final items = state.currentItems;

        if(state.isLoading){
          return getLoadingWidget(context);
        }

        if(items.isEmpty){
          return getEmptyCustomerMessage(context);
        }
        return DataTable2(
          showCheckboxColumn: false,
          showBottomBorder: false,
          lmRatio: 2.5,
          columnSpacing: 16,
          horizontalMargin: 7,
          smRatio: 0.7,
          dataRowHeight: 80,
          columns: _getDataColumns2(),
          rows: _getDataRows2(context, items: items),
        );
      },
    );
  }


  List<DataColumn2> _getDataColumns2(){
    return [
      const DataColumn2(
        label: Text("Kodu"),
        size: ColumnSize.M,
        numeric: true
      ),
      const DataColumn2(
        label: Text("İsim"),
        size: ColumnSize.L
      ),
      const DataColumn2(
        label: Text("Fiyat"),
        size: ColumnSize.M,
        numeric: true
      ),
      const DataColumn2(
        label: Text(""),
        size: ColumnSize.S,
      )
    ];
  }

  List<DataRow2> _getDataRows2(BuildContext context,{
    required List<MaterialModel> items,
  }){
    final rows = <DataRow2>[];

    for(final item in items){
      final row = DataRow2(
        cells: _getDataCell2(context, item),
        selected: false,
        onSelectChanged: (selected){
          ToastUtils.showLongToast(item.title);
        }
      );
      rows.add(row);
      // rows.add(_getSpaceRow());
    }
    return rows;
  }

  List<DataCell> _getDataCell2(BuildContext context,MaterialModel item){
    final style = Theme.of(context).textTheme.bodyMedium;
    return [
      DataCell(
        Text(
          item.code,
          style: style,
        )
      ),
      DataCell(
        Text(
            item.title,
            style: style
        ),
      ),
      DataCell(
        Text("${item.sellingPrice}",
          style: style,
        )
      ),
      DataCell(
        const Icon(Icons.more_vert),
        onTap: (){
          handleBottomMenu(context, item);
        }
      )
    ];
  }
}