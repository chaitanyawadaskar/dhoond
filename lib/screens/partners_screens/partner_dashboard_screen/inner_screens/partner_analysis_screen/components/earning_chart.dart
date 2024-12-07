import 'package:dhoond/utilities/theme/ktext_theme.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../../utilities/custom_colors/custom_colors.dart';

class EarningChart extends StatelessWidget {
  const EarningChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: LineChart(
        sampleData,
        duration: const Duration(milliseconds: 250),
      ),
    );
  }

  LineChartData get sampleData => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: gridData,
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 0,
        maxX: 14,
        maxY: 4,
        minY: 0,
      );

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (touchedSpot) => Colors.blueGrey.withOpacity(0.8),
        ),
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_1,
        lineChartBarData1_2,
        lineChartBarData1_3,
      ];

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    var style = KText.r11Grey;
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0k';
        break;
      case 1:
        text = '40k';
        break;
      case 2:
        text = '60k';
        break;
      case 3:
        text = '80k';
        break;
      case 4:
        text = '100k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 1,
        reservedSize: 35,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = Text('16 Aug', style: KText.r10Grey);
        break;
      case 4:
        text = Text('06:00', style: KText.r10Grey);
        break;
      case 8:
        text = Text('08:00', style: KText.r10Grey);
      case 12:
        text = Text('12:00', style: KText.r10Grey);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 30,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  FlGridData get gridData => const FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: Border(
          bottom:
              BorderSide(color: CustomColors.black.withOpacity(0.2), width: 1),
          left:
              BorderSide(color: CustomColors.black.withOpacity(0.2), width: 1),
          right: const BorderSide(color: Colors.transparent),
          top: const BorderSide(color: Colors.transparent),
        ),
      );

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        color: CustomColors.grey,
        barWidth: 1,
        isStrokeCapRound: true,
        curveSmoothness: 0.15,
        dotData: const FlDotData(show: true),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(0, 0),
          FlSpot(3, 1.5),
          FlSpot(5, 1.4),
          FlSpot(7, 3.4),
          FlSpot(10, 2),
          FlSpot(12, 2.2),
          FlSpot(13, 1.8),
        ],
      );

  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
        isCurved: true,
        color: CustomColors.lineGreen.withOpacity(0.7),
        barWidth: 1,
        isStrokeCapRound: true,
        curveSmoothness: 0.15,
        dotData: const FlDotData(show: true),
        dashArray: [
          5,
          6,
        ],
        belowBarData: BarAreaData(
          show: false,
          color: CustomColors.pink.withOpacity(0),
        ),
        spots: const [
          FlSpot(1, 0),
          FlSpot(3, 2.8),
          FlSpot(5, 1.1),
          FlSpot(10, 2.8),
          FlSpot(12, 2.6),
          FlSpot(13, 3.9),
        ],
      );

  LineChartBarData get lineChartBarData1_3 => LineChartBarData(
        isCurved: true,
        color: CustomColors.lineGreen,
        barWidth: 1,
        curveSmoothness: 0.15,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: true),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1.5, 0),
          FlSpot(3, 0.5),
          FlSpot(5, 3),
          FlSpot(7, 1),
          FlSpot(10, 2),
          FlSpot(10, 1),
          FlSpot(13, 0),
        ],
      );
}
