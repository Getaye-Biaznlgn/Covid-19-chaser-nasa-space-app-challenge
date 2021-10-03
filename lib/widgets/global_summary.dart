import '../models/global_summary.dart';
import 'package:flutter/material.dart';
import '../utils/network_service.dart';
import '../widgets/global_summary_card.dart';
NetworkServices covidService = NetworkServices();

class GlobalSummaryWidget extends StatefulWidget {
  @override
  _GlobalSummaryWidgetState createState() => _GlobalSummaryWidgetState();
}

class _GlobalSummaryWidgetState extends State<GlobalSummaryWidget> {
  Future<GlobalSummaryModel> summary;

  @override
  void initState() {
    super.initState();
    summary = covidService.getGlobalSummary();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: summary,
      builder: (context, snapshot) {
        if (snapshot.hasError)
          return Center(
            child: Text("Network Error"),
          );
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return Center(child: CircularProgressIndicator());
          default:
            return !snapshot.hasData
                ? Center(
                    child: Center(child: Text("Empty")),
                  )
                : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                      children: <Widget>[
                        GlobalSummaryCard(title: 'Confirmed',totalCount: snapshot.data.totalConfirmed, todayCount: snapshot.data.newConfirmed, todayColor: Colors.greenAccent, totalColor: Colors.orangeAccent),
                        GlobalSummaryCard(title: 'Active',totalCount: snapshot.data.totalConfirmed-snapshot.data.totalRecovered-snapshot.data.totalDeaths,
                         todayCount: snapshot.data.newConfirmed -snapshot.data.newRecovered - snapshot.data.newDeaths, 
                         todayColor: Colors.lightGreen[700], totalColor: Colors.blueAccent),
                        GlobalSummaryCard(title: 'Recovered',totalCount: snapshot.data.totalRecovered, todayCount: snapshot.data.newRecovered, todayColor: Colors.teal[200], totalColor: Colors.deepOrange[300]),
                        GlobalSummaryCard(title: 'Death',totalCount: snapshot.data.totalDeaths, todayCount: snapshot.data.newDeaths, todayColor:Colors.redAccent , totalColor: Colors.red[900])



                      ],
                    ),
                );
        }
      },
    );
  }
}
