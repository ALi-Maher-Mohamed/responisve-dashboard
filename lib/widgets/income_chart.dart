import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(getChartData());
  }

  PieChartData getChartData() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: [
          PieChartSectionData(
            showTitle: false,
            radius: activeIndex == 0 ? 60 : 50,
            value: 40,
            color: const Color(0xff208bc7),
          ),
          PieChartSectionData(
            value: 25,
            radius: activeIndex == 1 ? 60 : 50,
            showTitle: false,
            color: const Color(0xff4db7f2),
          ),
          PieChartSectionData(
            value: 20,
            radius: activeIndex == 2 ? 60 : 50,
            showTitle: false,
            color: const Color(0xff064060),
          ),
          PieChartSectionData(
            value: 22,
            radius: activeIndex == 3 ? 60 : 50,
            showTitle: false,
            color: const Color(0xffe2decd),
          ),
        ]);
  }
}
