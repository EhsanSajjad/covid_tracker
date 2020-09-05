class Advise {
  String title;
  String subtitle;

  Advise({this.title, this.subtitle});

  factory Advise.fromJson(Map<String, dynamic> json) {
    return new Advise(title: json['title'], subtitle: json['subtitle']);
  }
}

class AdviseList {
  final List<Advise> advices;

  AdviseList({this.advices});

  factory AdviseList.fromJson(List<dynamic> parsedJson) {
    List<Advise> advices = new List<Advise>();

    return AdviseList(      
      advices: parsedJson.map((i)=>Advise.fromJson(i)).toList()
    );
  }
}
