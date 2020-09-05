import 'package:covid_tracker/screens/safety_screen.dart';
import 'package:covid_tracker/screens/tracker_screen.dart';
import 'package:flutter/material.dart';
import './screens/covid_home.dart';

void main() => runApp(CovidTracker());

class CovidTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primaryColor: Colors.white, accentColor: Colors.blueAccent),
      home: CovidHome(),
      routes: {
        SafetyScreen.routeName:(ctx)=>SafetyScreen(),
        TrackerScreen.routeName:(ctx)=>TrackerScreen()
      },
    );
  }
}
