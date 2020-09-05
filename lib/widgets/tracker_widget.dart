import 'package:flutter/material.dart';
import '../services/api.dart';
import '../models/total_stats.dart';

class TrackerWidget extends StatefulWidget {
  @override
  _TrackerWidgetState createState() => _TrackerWidgetState();
}

class _TrackerWidgetState extends State<TrackerWidget> {
  @override
  var service = CovidService.instance;
  Future<TotalCount> _totalCountFuture;

  @override
  void initState() {
    _fetchData();
    super.initState();
  }

  _fetchData() {
    _totalCountFuture = service.fetchAllTotalCount();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _totalCountFuture,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else {
          final TotalCount totalCount = snapshot.data;
          return ListView(
            
            children: <Widget>[
              Card(
                color: Colors.blueAccent[100],
                child: ListTile(
                title: Text(
                  'Total Infected: ${totalCount.confirmed}',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[900]),
                  ),
                ),
              ),
              Card(
                color: Colors.greenAccent[100],
                  child: ListTile(
                  title: Text(
                    'Total Recoveries: ${totalCount.recovered}',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[900]),
                  ),
                  subtitle: Text(
                    'Recovery Rate: ${totalCount.recoveryRate.toStringAsFixed(2)}%',
                    style: TextStyle(color: Colors.green[600], fontSize: 17),
                  ),
                ),
              ),
              Card(
                color: Colors.red[100],
                  child: ListTile(
                  title: Text(
                    'Total Fatalities: ${totalCount.deaths}',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.red[900]),
                  ),
                  subtitle: Text(
                    'Fatality Rate: ${totalCount.fatalityRate.toStringAsFixed(2)}%',
                    style: TextStyle(color: Colors.red[500], fontSize: 17),
                  ),
                ),
              ),

              Card(
                child: Container(
                  child: Image.asset('pictures/safety1.png'),
                ),
              ),

            ],
          );
        }
      },
    );
  }
}
