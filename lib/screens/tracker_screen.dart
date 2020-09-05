import 'package:flutter/material.dart';
import '../widgets/tracker_widget.dart';

class TrackerScreen extends StatelessWidget {
  static const routeName = '/tracker';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        elevation: 0,
        centerTitle: true,
        title: Text('Live Tracker',
            style:
                TextStyle(fontSize: 25, color: Colors.white)),
      ),
      body: TrackerWidget(),
      backgroundColor: Colors.brown[200],
    );
  }
}
