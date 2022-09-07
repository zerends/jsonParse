import 'package:json_parse_kullanimi/film_siniflari/kategoriler.dart';
import 'package:json_parse_kullanimi/film_siniflari/yonetmen.dart';

class Filmler {
  String film_id;
  String film_ad;
  String film_yil;
  String film_resim;
  Yonetmenler yonetmen;
  Kategoriler kategori;

  Filmler({
    required this.film_id,
    required this.film_ad,
    required this.film_yil,
    required this.film_resim,
    required this.kategori,
    required this.yonetmen
  });

  factory Filmler.fromJson(Map<String,dynamic>json){

    return Filmler(film_id: json["film_id"] as String,
     film_ad: json["film_ad"] as String,
      film_yil: json["film_yil"] as String,
      film_resim: json["film_resim"] as String,
      kategori: Kategoriler.fromJson(json["kategori"]),
      yonetmen: Yonetmenler.fromJson(json["yonetmen"])
    
    );

  }
}