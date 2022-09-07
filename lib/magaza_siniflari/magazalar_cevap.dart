import 'dart:convert';

import 'package:json_parse_kullanimi/magaza_siniflari/magazalar.dart';

class MagazalarCevap {
  
  List<Magazalar> magazalar;
  int success;

  MagazalarCevap({
    required this.magazalar,
    required this.success
    
  });

  factory MagazalarCevap.fromJson(Map<String,dynamic> json){
    var jsonArray= json["magazalar"] as List;
    var success = json["success"] as int;
    
    List<Magazalar> magazalar= jsonArray.map((jsonArrayNesneleri) => Magazalar.fromJson(jsonArrayNesneleri)).toList();

    return MagazalarCevap(magazalar: magazalar, success: success);
  }


}