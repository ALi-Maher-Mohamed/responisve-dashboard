import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
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
            titleStyle: AppStyles.styleMedium16(context).copyWith(
                fontWeight: FontWeight.bold,
                color: activeIndex == 0 ? null : Colors.white),
            radius: activeIndex == 0 ? 60 : 50,
            title: activeIndex == 0 ? 'Design service ' : '40%',
            titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
            value: 40,
            color: const Color(0xff208bc7),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? 1.5 : null,
            title: activeIndex == 1 ? 'Design Product ' : '25%',
            value: 25,
            radius: activeIndex == 1 ? 60 : 50,
            titleStyle: AppStyles.styleMedium16(context).copyWith(
                fontWeight: FontWeight.bold,
                color: activeIndex == 1 ? null : Colors.white),
            color: const Color(0xff4db7f2),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
            title: activeIndex == 2 ? 'Design royalti' : '20%',
            value: 20,
            radius: activeIndex == 2 ? 60 : 50,
            titleStyle: AppStyles.styleMedium16(context).copyWith(
                fontWeight: FontWeight.bold,
                color: activeIndex == 2 ? null : Colors.white),
            color: const Color(0xff064060),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
            title: activeIndex == 3 ? 'Other' : '22%',
            value: 22,
            radius: activeIndex == 3 ? 60 : 50,
            titleStyle: AppStyles.styleSemiBold16(context).copyWith(
                fontWeight: FontWeight.bold,
                color: activeIndex == 3 ? null : const Color(0xff064060)),
            color: const Color(0xffe2decd),
          ),
        ]);
  }
}
