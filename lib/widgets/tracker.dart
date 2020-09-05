import '../screens/tracker_screen.dart';
import 'package:flutter/material.dart';

class TrackerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(TrackerScreen.routeName);
      },
      child: Card(
        color: Colors.brown[700],
        child: ListTile(
          title: Center(
            child: Text(
              'Tracker',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
