import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class MyPieChart extends StatefulWidget {
  const MyPieChart({Key? key}) : super(key: key);

  @override
  State<MyPieChart> createState() => _MyPieChartState();
}

class _MyPieChartState extends State<MyPieChart> {
  @override
  Widget build(BuildContext context) {
    Map<String, double> data = {
      "Food": 250,
      "Fund": 600,
      "Internet": 450,
      "Investment": 960,
      "Housing": 356,
      "Profit": 650,
    };
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Pie Chart of Budget",
                style: TextStyle(color: Colors.black38, fontSize: 25),
              ),
            ),
            SizedBox(height: 20),
            PieChart(
              centerTextStyle: TextStyle(color: Colors.white),
              dataMap: data,
              colorList: [
                Colors.red,
                Colors.green,
                Colors.blue,
                Colors.grey,
                Colors.yellow,
                Colors.deepPurple,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
