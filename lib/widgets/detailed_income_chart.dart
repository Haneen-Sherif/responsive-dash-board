import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 0 ? 1.4 : null,
            value: 40,
            title: activeIndex == 0 ? "Design service" : "40%",
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndex == 0 ? const Color(0xFF064060) : Colors.white,
            ),
            radius: activeIndex == 0 ? 60 : 50,
            color: const Color(0xff208bc7),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? 1.7 : null,
            value: 25,
            title: activeIndex == 1 ? "Design product" : "25%",
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndex == 1 ? const Color(0xFF064060) : Colors.white,
            ),
            radius: activeIndex == 1 ? 60 : 50,
            color: const Color(0xff4db7f2),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? 1.23 : null,
            value: 20,
            title: activeIndex == 2 ? "Product royalti" : "20%",
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndex == 2 ? const Color(0xFF064060) : Colors.white,
            ),
            radius: activeIndex == 2 ? 60 : 50,
            color: const Color(0xff064060),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? 1.4 : null,
            value: 22,
            title: activeIndex == 3 ? "Other" : "22%",
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndex == 3 ? const Color(0xFF064060) : Colors.white,
            ),
            radius: activeIndex == 3 ? 60 : 50,
            color: const Color(0xffe2decd),
          ),
        ]);
  }
}
