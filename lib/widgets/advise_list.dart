import 'package:flutter/material.dart';
import '../models/advise.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

Future<String> _loadAdviseAsset() {
  return rootBundle.loadString('assets/who.json');
}

Future<List<Advise>> loadAdvise() async {
  List<Advise> adlist;
  String jsonString = await _loadAdviseAsset();
  final jsonRes = json.decode(jsonString) as List;
  adlist = jsonRes.map((json) => Advise.fromJson(json)).toList();
  return adlist;
}

class AdviseList extends StatelessWidget {
  Widget listViewWid(List<Advise> advise) {
    return ListView.builder(
        itemCount: advise.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top:8),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: ListTile(
                  title: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        '${advise[index].title}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  subtitle: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        '${advise[index].subtitle}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadAdvise(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return listViewWid(snapshot.data);
        } else if (snapshot.error) {
          return Text('${snapshot.error}');
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
