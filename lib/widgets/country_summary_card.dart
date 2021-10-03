import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../models/country_summary.dart';
import '../models/time_series_cases.dart';

class CountrySummaryCard extends StatelessWidget {
  final List<CountrySummaryModel>  summaryList;

  CountrySummaryCard(
      {@required this.summaryList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildCard('Confirmed','Active',summaryList[summaryList.length - 1].confirmed,
        summaryList[summaryList.length - 1].active, Colors.blueAccent, Colors.amberAccent),
        buildCard('Recovered','Death',summaryList[summaryList.length - 1].recovered,
        summaryList[summaryList.length - 1].death, Colors.greenAccent, Colors.redAccent),
        
      ],
    );
  }

  Card buildCard(leftTitle, rightTitle, totalLeft,totalRight, colorLeft, colorRight) {
    return Card(
        elevation: 1.0,
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildCardItem(leftTitle, totalLeft, colorLeft),
              SizedBox(
                width: 20,
              ),
              _buildCardItem(rightTitle, totalRight, colorRight)
            ],
          ),
        ),
      );
  }

  Widget _buildCardItem(title, count, color) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
             Text(
              'Total',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              count.toString(),
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  // Widget buildCard(String leftTitle, int leftValue, Color leftColor,
  //     String rightTitle, int rightValue, Color rightColor) {
  //   return Card(
  //     elevation: 1,
  //     child: Container(
  //       height: 100,
  //       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: <Widget>[
  //           Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: <Widget>[
  //               Text(
  //                 leftTitle,
  //                 style: TextStyle(
  //                   color: Colors.grey,
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 14,
  //                 ),
  //               ),
  //               Expanded(
  //                 child: Container(),
  //               ),
  //               Text(
  //                 "Total",
  //                 style: TextStyle(
  //                   color: leftColor,
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 12,
  //                 ),
  //               ),
  //               Text(
  //                 leftValue.toString().replaceAllMapped(reg, mathFunc),
  //                 style: TextStyle(
  //                   color: leftColor,
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 28,
  //                 ),
  //               ),
  //             ],
  //           ),
  //           Column(
  //             crossAxisAlignment: CrossAxisAlignment.end,
  //             children: <Widget>[
  //               Text(
  //                 rightTitle,
  //                 style: TextStyle(
  //                   color: Colors.grey,
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 14,
  //                 ),
  //               ),
  //               Expanded(
  //                 child: Container(),
  //               ),
  //               Text(
  //                 "Total",
  //                 style: TextStyle(
  //                   color: rightColor,
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 12,
  //                 ),
  //               ),
  //               Text(
  //                 rightValue.toString().replaceAllMapped(reg, mathFunc),
  //                 style: TextStyle(
  //                   color: rightColor,
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 28,
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget buildCardChart(List<CountrySummaryCardModel> summaryList){
  //   return Card(
  //     elevation: 1,
  //     child: Container(
  //       height: 190,
  //       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  //       child: Chart(
  //         _createData(summaryList),
  //         animate: false,
  //       ),
  //     ),
  //   );
  // }

  // static List<charts.Series<TimeSeriesCases, DateTime>> _createData(List<CountrySummaryCardModel> summaryList) {

  //   List<TimeSeriesCases> confirmedData = [];
  //   List<TimeSeriesCases> activeData = [];
  //   List<TimeSeriesCases> recoveredData = [];
  //   List<TimeSeriesCases> deathData = [];

  //   for (var item in summaryList) {
  //     confirmedData.add(TimeSeriesCases(item.date, item.confirmed));
  //     activeData.add(TimeSeriesCases(item.date, item.active));
  //     recoveredData.add(TimeSeriesCases(item.date, item.recovered));
  //     deathData.add(TimeSeriesCases(item.date, item.death));
  //   }

  //   return [
  //     new charts.Series<TimeSeriesCases, DateTime>(
  //       id: 'Confirmed',
  //       colorFn: (_, __) => charts.ColorUtil.fromDartColor(Color(0xFFFF1242)),
  //       domainFn: (TimeSeriesCases cases, _) => cases.time,
  //       measureFn: (TimeSeriesCases cases, _) => cases.cases,
  //       data: confirmedData,
  //     ),
  //     new charts.Series<TimeSeriesCases, DateTime>(
  //       id: 'Active',
  //       colorFn: (_, __) => charts.ColorUtil.fromDartColor(Color(0xFF017BFF)),
  //       domainFn: (TimeSeriesCases cases, _) => cases.time,
  //       measureFn: (TimeSeriesCases cases, _) => cases.cases,
  //       data: activeData,
  //     ),
  //     new charts.Series<TimeSeriesCases, DateTime>(
  //       id: 'Recovered',
  //       colorFn: (_, __) => charts.ColorUtil.fromDartColor(kRecoveredColor),
  //       domainFn: (TimeSeriesCases cases, _) => cases.time,
  //       measureFn: (TimeSeriesCases cases, _) => cases.cases,
  //       data: recoveredData,
  //     ),
  //     new charts.Series<TimeSeriesCases, DateTime>(
  //       id: 'Death',
  //       colorFn: (_, __) => charts.ColorUtil.fromDartColor(kDeathColor),
  //       domainFn: (TimeSeriesCases cases, _) => cases.time,
  //       measureFn: (TimeSeriesCases cases, _) => cases.cases,
  //       data: deathData,
  //     ),

  //   ];
  // }

}
