import 'dart:io';

import 'package:flutter/material.dart';
import './screens/home_page.dart';









import 'package:flutter/material.dart';
import './screens/onboarding_screen.dart';
import './screens/intro_screen.dart';
import './screens/education_page.dart';
import './screens/detail_screen.dart';
import './screens/getting_started_screen.dart';
import './screens/education_page.dart';
import './widget/custom_route.dart';
import 'package:flutter/services.dart';



class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'covid 19 Onboarding UI',
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => EducationPage(),
        '/third': (context) => const DetailScreen(),
        '/home_route':(contex)=>HomePage()
      },
    );
  }
}

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(MyApp());
}



class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
