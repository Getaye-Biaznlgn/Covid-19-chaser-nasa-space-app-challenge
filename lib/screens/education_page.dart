import 'package:flutter/material.dart';
import '../screens/how_to_use_mask.dart';
import '../screens/preventions.dart';
import '../screens/symptoms.dart';
import '../screens/transmission.dart';
import '../model/category_model.dart';
import './detail_screen.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({Key key}) : super(key: key);

  @override
  _EducationPageState createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  int _selectedCategories = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[700],
          bottom: const TabBar(
            indicatorColor: Colors.deepPurple,
            isScrollable: true,
            tabs: [
              Tab(
                text: 'Transmission',
              ),
              Tab(
                text: 'Symptoms',
              ),
              Tab(text: 'Preventions'),
              Tab(
                text: 'How to Use Mask',
              )
            ],
          ),
          title: const Text('Education Hub'),
        ),
        body: TabBarView(
          children: [
            Transmission(),
            Symptom(),
            Preventions(),
            HowToUseMask(),
          ],
        ),
      ),
    );
  }
}
