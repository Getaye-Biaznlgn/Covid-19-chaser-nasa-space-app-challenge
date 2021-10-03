import 'package:covid/widgets/country_summary_card.dart';
import 'package:covid/widgets/global_summary_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../utils/network_service.dart';

import '../models/country_summary.dart';
import '../models/country_model.dart';

NetworkServices covidService = NetworkServices();

class CountrySummary extends StatefulWidget {
  @override
  _CountrySummaryState createState() => _CountrySummaryState();
}

class _CountrySummaryState extends State<CountrySummary> {
  final TextEditingController _typeAheadController = TextEditingController();
  Future<List<CountryModel>> countryList;
  Future<List<CountrySummaryModel>> summaryList;

  @override
  initState() {
    super.initState();

    countryList = covidService.getCountryList();

    this._typeAheadController.text = "Ethiopia";
    summaryList = covidService.getCountrySummary("ethiopia");
  }

  List<String> _getSuggestions(List<CountryModel> list, String query) {
    List<String> matches = List();

    for (var item in list) {
      matches.add(item.country);
    }

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: countryList,
      builder: (context, snapshot) {
        if (snapshot.hasError)
          return Center(
            child: Text("Error"),
          );
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return Center(child: CircularProgressIndicator());
          default:
            if (!snapshot.hasData) {
              return Center(
                child: Text("Empty"),
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                    child: TypeAheadFormField(
                      textFieldConfiguration: TextFieldConfiguration(
                        controller: this._typeAheadController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          hintText: 'Country name',
                          hintStyle: TextStyle(fontSize: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                          // contentPadding: EdgeInsets.all(20),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 16.0),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      suggestionsCallback: (pattern) {
                        return _getSuggestions(snapshot.data, pattern);
                      },
                      itemBuilder: (context, suggestion) {
                        return ListTile(
                          title: Text(suggestion),
                        );
                      },
                      transitionBuilder: (context, suggestionsBox, controller) {
                        return suggestionsBox;
                      },
                      onSuggestionSelected: (suggestion) {
                        this._typeAheadController.text = suggestion;
                        setState(() {
                          summaryList = covidService.getCountrySummary(snapshot
                              .data
                              .firstWhere(
                                  (element) => element.country == suggestion)
                              .slug);
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  FutureBuilder(
                    future: summaryList,
                    builder: (context, snapshot) {
                      if (snapshot.hasError)
                        return Center(
                          child: Text("Error"),
                        );
                      switch (snapshot.connectionState) {
                        case ConnectionState.waiting:
                          return Center(child: CircularProgressIndicator());
                        default:
                          return !snapshot.hasData
                              ? Center(
                                  child: Text("Empty"),
                                )
                              : Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    children: <Widget>[
                                      CountrySummaryCard(
                                        summaryList: snapshot.data,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset('assets/images/graph.jpg'),
                                      )
                                    ],
                                  ),
                                );
                      }
                    },
                  ),
                ],
              );
            }
        }
      },
    );
  }
}
