import 'package:flutter/material.dart';
import '../services/api.dart';
import '../models/total_stats.dart';

class LiveCounter extends StatefulWidget {
  @override
  _LiveCounterState createState() => _LiveCounterState();
}

class _LiveCounterState extends State<LiveCounter> {
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FutureBuilder(
          future: _totalCountFuture,
          builder: (ctx, snapshot) {
            final TotalCount totalCount = snapshot.data;
            return Card(
              color: Colors.orange[50],
              child: ListTile(
                title: Text(
                  'Confirmed Cases: ${totalCount.confirmed}',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red[800]),
                  
                ),
                subtitle: Text('live data', 
                style: TextStyle(color: Colors.black, fontSize: 15,
                ),),
              ),
            );
          }),
    );
  }
}
