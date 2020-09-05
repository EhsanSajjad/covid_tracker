import 'package:flutter/material.dart';
import '../widgets/advise_list.dart';

class SafetyScreen extends StatelessWidget {
  static const routeName = '/safety-tips';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        elevation: 0,
        centerTitle: true,
        title: Text('Corona Care',
        style: TextStyle(fontSize: 25, color: Colors.white)
        ),
      ),
      body: AdviseList(),
      backgroundColor: Colors.green[200],
    );
  }
}
