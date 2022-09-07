// ignore_for_file: unused_import, avoid_web_libraries_in_flutter

import 'dart:convert';



class Mesajlar {
  
  int success;
  String message;
  
  Mesajlar({required this.success,required this.message});

  factory Mesajlar.fromJson(Map<String,dynamic> json){
    return Mesajlar(
      success: json["success"] as int, 
      message: json["message"] as String
      
    );
  }

}