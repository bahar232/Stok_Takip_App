import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:quantumapp/core/presentation/components/app_bar/custom_nested_view_app_bar.dart';
import 'package:quantumapp/features/graph_test/util/product_util.dart';
import 'package:collection/collection.dart';

import 'indicator.dart';

class GraphPage extends StatelessWidget {
  const GraphPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomNestedViewAppBar(
          title: Text("Graphs"),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(child: getPieChart()),
                    Expanded(child: getBarChart())
                  ],
                ),
              )
            ]
          ),
        )
      ),
    );
  }





}


extension GraphPagePieChart on GraphPage{

  Widget getPieChart(){
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: SizedBox(
            height: 200,
            width: 200,
            child: PieChart(
              PieChartData(
                pieTouchData: PieTouchData(),
                borderData: FlBorderData(
                  show: false,
                ),
                sectionsSpace: 0,
                centerSpaceRadius: 40,
                sections: showingSectionsForPie(),
              ),
            ),
          ),
        ),
        _getPieTitles()
      ],
    );
  }

  Widget _getPieTitles(){

    final items = <Widget>[];

    for(var e in ProductUtil.productsInfoForPie){
      items.add(
          Indicator(
            color: e.color ?? Colors.black,
            text: e.name,
            isSquare: true,
          )
      );
      items.add(const SizedBox(height: 4,));
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items,
    );
  }

  List<PieChartSectionData> showingSectionsForPie() {

    return ProductUtil.productsInfoForPie.mapIndexed((i, e){
      return PieChartSectionData(
          color: e.color,
          value: e.total,
          title: "${e.total}%",
          radius: 70
        //radius: radius,
        // titleStyle: TextStyle(
        //   fontSize: 30,
        //   fontWeight: FontWeight.bold,
        //   color: AppColors.mainTextColor1,
        //   shadows: shadows,
        // ),
      );
    }).toList();
  }
}

extension GraphPageBarChart on GraphPage{

  Widget getBarChart(){
    return BarChart(
      BarChartData(
        barTouchData: barTouchData,
        minY: 0,
        titlesData: _getTitlesData(),
        borderData: FlBorderData(
          show: false,
        ),
        barGroups: _getItems(),
        gridData: const FlGridData(show: true),
        alignment: BarChartAlignment.spaceAround,
        maxY: 100,
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
    enabled: false,
    touchTooltipData: BarTouchTooltipData(
      tooltipBgColor: Colors.transparent,
      tooltipPadding: EdgeInsets.zero,
      tooltipMargin: 8,
      getTooltipItem: (
          BarChartGroupData group,
          int groupIndex,
          BarChartRodData rod,
          int rodIndex,
          ) {
        return BarTooltipItem(
          rod.toY.round().toString(),
          const TextStyle(
            color: Colors.cyan,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    ),
  );

  FlTitlesData _getTitlesData(){
    return FlTitlesData(
      show: true,
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          getTitlesWidget: getTitlesWidget,
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false,getTitlesWidget: getTitlesWidget),
      ),
      topTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      rightTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
    );
  }

  List<BarChartGroupData> _getItems(){
    return ProductUtil.productsInfo.mapIndexed((i,e){
      return BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
              toY: e.total,
              width: 17,
              borderRadius: BorderRadius.circular(5)
          ),
        ],
        showingTooltipIndicators: [0],
      );
    }).toList();
  }

  Widget getTitlesWidget(double index,TitleMeta meta){
    final name = ProductUtil.productsInfo[index.toInt()].name;
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,

      child: Text(name,),
    );
  }
}
