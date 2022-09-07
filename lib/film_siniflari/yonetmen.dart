class Yonetmenler {
  String yonetmen_id;
  String yonetmen_ad;

  Yonetmenler({required this.yonetmen_ad,required this.yonetmen_id});

  factory Yonetmenler.fromJson(Map<String,dynamic> json){

    return Yonetmenler(yonetmen_ad: json["yonetmen_id"] as String, yonetmen_id: json["yonetmen_ad"] as String);
  }


}