import 'package:flutter/material.dart';

class GlobalSummaryCard extends StatelessWidget {
  final String title;
  final int totalCount;
  final int todayCount;
  final Color todayColor;
  final Color totalColor;
  GlobalSummaryCard({@required this.title,@required this.totalCount,@required this.todayCount,@required this.todayColor,@required this.totalColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children: <Widget>[
                _buildGlobalSummaryCardItem('Total', totalCount, totalColor),
                SizedBox(width: 20,),
                _buildGlobalSummaryCardItem('Today', todayCount, todayColor)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildGlobalSummaryCardItem(title, count,color) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[Text(title, style: TextStyle(color: Colors.white),), 
          SizedBox(height:5,),
          Text(count.toString(),style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
