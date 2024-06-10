

import 'package:data_table_2/data_table_2.dart';
import 'package:expandable_datatable/expandable_datatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantumapp/core/presentation/components/app_bar/custom_nested_view_app_bar.dart';
import 'package:quantumapp/features/customers/customer_movements/bloc/customer_movements_event.dart';
import 'package:quantumapp/features/customers/customer_movements/sections/components_section.dart';
import 'package:quantumapp/features/customers/customer_movements/sections/table_content_section.dart';

import 'bloc/customer_movements_bloc.dart';
import 'bloc/customer_movements_state.dart';

class CustomerMovementsPage extends StatelessWidget {

  final int customerId;

  const CustomerMovementsPage({
    Key? key,
    required this.customerId
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final bloc = context.read<CustomerMovementsBloc>();
    bloc.add(CustomerMovementsEventLoadData(customerId: customerId));

    return getListeners(
      child: Scaffold(
        body: SafeArea(
          child: CustomNestedViewAppBar(
            title: const Text("Cari Hareketleri"),
            child: BlocBuilder<CustomerMovementsBloc,CustomerMovementsState>(
              builder: (context, state){
                if(state.isLoading){
                  return getLoadingWidget(context);
                }
                final items = state.items;
                if(items.isEmpty){
                  return getEmptyMessage(context);
                }

                return ExpandableTheme(
                  data: ExpandableThemeData(
                    context,
                    rowBorder: BorderSide(
                      color: Theme.of(context).colorScheme.outlineVariant,
                    ),
                    expandedTextStyle: Theme.of(context).textTheme.bodyMedium,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 7),
                    paginationBorderRadius: BorderRadius.circular(13),
                    expansionIcon: const Icon(Icons.expand_less),
                    expandedBorderColor: Theme.of(context).colorScheme.primary,
                    paginationSelectedFillColor: Theme.of(context).colorScheme.primaryContainer,
                    paginationSelectedTextColor: Theme.of(context).colorScheme.onPrimaryContainer
                  ),
                  child: ExpandableDataTable(
                    rows: items.map((e) => getRow(e)).toList(),
                    headers: getHeaders(),
                    visibleColumnCount: 3,
                    isEditable: false,
                    multipleExpansion: true,
                  ),
                );

                // return DataTable2(
                //   showCheckboxColumn: false,
                //   showBottomBorder: false,
                //   lmRatio: 2.5,
                //   columnSpacing: 16,
                //   horizontalMargin: 7,
                //   smRatio: 0.7,
                //   dataRowHeight: 80,
                //   columns: getDataColumns2(),
                //   rows: getDataRows2(context, items: items),
                // );

                // return ListView.builder(
                //   itemCount: items.length,
                //   itemBuilder: (context, index){
                //     final item = items[index];
                //     return Text(item.movementInfo);
                //   },
                // );
              },
            ),
          ),
        ),
      ),
    );
  }
}
