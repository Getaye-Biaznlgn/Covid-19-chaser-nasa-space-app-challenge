import 'package:covid/style.dart';
import 'package:covid/widgets/detector_master_tab.dart';
import 'package:covid/widgets/home_tab.dart';

import '../widgets/drawer.dart';
import 'package:flutter/material.dart';
import '../widgets/doctor_consultancy.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _tabScreens = [
    TabHome(),
    Container(child: Text('2')),
    ConsultancyTab(),
    Container(
      child: Text('4'),
    ),
    DetectorMasterTab()
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid 19'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Style.primaryColor,
      drawer: DrawerWidget(),
      body: _tabScreens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index)=>setState(()=>_currentIndex=index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        elevation: 0.0,
        items: [Icons.home,Icons.book,Icons.ad_units_sharp, Icons.margin, Icons.access_alarms]
        .asMap()
        .map((key, value) => MapEntry(key, 
        BottomNavigationBarItem(
          title:Text(''),
          icon: Container(
            padding: EdgeInsets.symmetric(
              vertical: 6.0,
              horizontal:16.0
            ),
            decoration:BoxDecoration(color: key==_currentIndex? Colors.blue[600]:Colors.transparent ,borderRadius: BorderRadius.circular(20)),
            child: Icon(value) ,
          )
        ),
        ),
        ).values.toList(),
      ),
    );
  }
}
