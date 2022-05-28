import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomLineChart extends StatelessWidget {
  const CustomLineChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.0,
      width: double.infinity,
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 24.0),
      child: LineChart(
        LineChartData(
          backgroundColor: Colors.white,
          minX: 0,
          maxX: 6,
          minY: 0,
          maxY: 5,
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
            show: true,
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 24.0,
                interval: 1,
                getTitlesWidget: (value, __) {
                  switch (value.toInt()) {
                    case 0:
                      return const Text(
                        "Mar",
                        style: TextStyle(
                          color: Color(0xffC3B8CA),
                          fontSize: 12.0,
                        ),
                      );
                    case 1:
                      return const Text(
                        "Apr",
                        style: TextStyle(
                          color: Color(0xffC3B8CA),
                          fontSize: 12.0,
                        ),
                      );
                    case 2:
                      return const Text(
                        "May",
                        style: TextStyle(
                          color: Color(0xffC3B8CA),
                          fontSize: 12.0,
                        ),
                      );
                    case 3:
                      return const Text(
                        "Jun",
                        style: TextStyle(
                          color: Color(0xffC3B8CA),
                          fontSize: 12.0,
                        ),
                      );
                    case 4:
                      return const Text(
                        "Jul",
                        style: TextStyle(
                          color: Color(0xffC3B8CA),
                          fontSize: 12.0,
                        ),
                      );
                    case 5:
                      return const Text(
                        "Aug",
                        style: TextStyle(
                          color: Color(0xffC3B8CA),
                          fontSize: 12.0,
                        ),
                      );
                    case 6:
                      return const Text(
                        "Sep",
                        style: TextStyle(
                          color: Color(0xffC3B8CA),
                          fontSize: 12.0,
                        ),
                      );
                  }

                  return const Text(
                    "",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  );
                },
                // margin: 8.0,
              ),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                const FlSpot(0, 3),
                const FlSpot(1.7, 2),
                const FlSpot(2.8, 1.6),
                const FlSpot(3.2, 4),
                const FlSpot(4.6, 3.2),
                const FlSpot(5, 4.3),
                const FlSpot(6, 3),
              ],
              isCurved: true,
              color: const Color(0xffAF6FFE),
              barWidth: 4.0,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
