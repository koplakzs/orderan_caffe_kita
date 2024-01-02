import 'package:caffe_kita/utils/fonts.dart';
import 'package:caffe_kita/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Statistik extends StatelessWidget {
  const Statistik({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData("Senin", 10),
      ChartData("Selasa", 20),
      ChartData("Rabu", 34),
      ChartData("Kamis", 25),
      ChartData("Jum'at", 30),
      ChartData("Sabtu", 20),
      ChartData("Minggu", 35)
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xffEBD2D2),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 3,
                    color: Color.fromARGB(255, 124, 124, 124),
                    offset: Offset(0, 4),
                  )
                ],
              ),
              child: Text(
                "STATISTIK PENGUNJUNG",
                style: TextStyling.base(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Color(0xffF8F4F4)),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "Nama Kafe",
                      style: TextStyling.base(
                        fontFamily: Fonts.irishGroverRegular,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      "STATISTIK PENGUNJUNG",
                      style: TextStyling.base(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: SfCartesianChart(
                        plotAreaBorderWidth: 0,
                        primaryXAxis: const CategoryAxis(
                          axisLine: AxisLine(color: Color(0xff000000)),
                          majorGridLines: MajorGridLines(width: 0),
                        ),
                        primaryYAxis: const NumericAxis(
                          axisLine: AxisLine(color: Color(0xff000000)),
                          majorGridLines: MajorGridLines(
                            color: Color(0xff000000),
                            width: 1,
                          ),
                        ),
                        series: <CartesianSeries>[
                          // Renders column chart
                          ColumnSeries<ChartData, String>(
                            dataSource: chartData,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double y; // Change this to double or int
}
