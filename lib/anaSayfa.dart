

// ignore_for_file: avoid_print, file_names

import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:json_parse_kullanimi/film_siniflari/filmler_cevap.dart';
import 'package:json_parse_kullanimi/magaza_siniflari/magazalar.dart';
import 'package:json_parse_kullanimi/magaza_siniflari/magazalar_cevap.dart';

import 'package:json_parse_kullanimi/mesajlar.dart';
import 'package:json_parse_kullanimi/urunler_cevap.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({ Key? key }) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {

  @override
  void initState() {
    //mesajParse();
    //urunlerParse();
    //magazalarParse();
    filmParse();
    super.initState();
  }

  void mesajParse(){
    String veri = '{"success":1,"message":"Başarılı"}' ;

    var jsonVeri = json.decode(veri);

    var mesaj = Mesajlar.fromJson(jsonVeri);
    print("Başarı: ${mesaj.success}");
    
    print("Mesaj: ${mesaj.message}");
  }

  void urunlerParse(){
    String veri = '{"urunler":[{"urun_id":1,"urun_adi":"Bilgisayar","urun_resim_adi":"bilgisayar.png","urun_fiyati":23000},{"urun_id":2,"urun_adi":"Gözlük","urun_resim_adi":"gozluk.png","urun_fiyati":1400},{"urun_id":3,"urun_adi":"Kulaklık","urun_resim_adi":"kulaklik.png","urun_fiyati":700},{"urun_id":4,"urun_adi":"Parfüm","urun_resim_adi":"parfum.png","urun_fiyati":1300},{"urun_id":5,"urun_adi":"Saat","urun_resim_adi":"saat.png","urun_fiyati":3500},{"urun_id":6,"urun_adi":"Süpürge","urun_resim_adi":"supurge.png","urun_fiyati":8700},{"urun_id":7,"urun_adi":"Telefon","urun_resim_adi":"telefon.png","urun_fiyati":18000}],"success":1}';

    var jsonVeri = json.decode(veri);
    var urunlerCevap = UrunlerCevap.fromJson(jsonVeri);
    var urunler = urunlerCevap.urunler;
    var success = urunlerCevap.success;

    print("Başarı: $success");
    print("********************************");
    for(var u in urunler){
      print("*************************");
      print("urun id : ${u.urun_id}");
      print("urun adi : ${u.urun_adi}");
      print("urun resimadi : ${u.urun_resim_adi}");
      print("urun fiyat : ${u.urun_fiyati}");
    }
  }

 void magazalarParse(){
  String veri = '{"magazalar":[{"magaza_id":"1","magaza_ad":"Migros","magaza_resim_ad":"migros.png","magaza_adres":"Demirta\u015f","magaza_tel":"02241111111","kategori":{"kategori_id":"1","kategori_ad":"Elektronik"}},{"magaza_id":"2","magaza_ad":"\u015eok","magaza_resim_ad":"sok.png","magaza_adres":"Sakarya Mah.","magaza_tel":"0224222222","kategori":{"kategori_id":"2","kategori_ad":"Market"}},{"magaza_id":"3","magaza_ad":"Gratis","magaza_resim_ad":"gratis.png","magaza_adres":"Osmangazi","magaza_tel":"02243333333","kategori":{"kategori_id":"3","kategori_ad":"Kozmetik"}},{"magaza_id":"4","magaza_ad":"A101","magaza_resim_ad":"a101.png","magaza_adres":"Dumlup\u0131nar Mah.","magaza_tel":"02244444444","kategori":{"kategori_id":"2","kategori_ad":"Market"}},{"magaza_id":"5","magaza_ad":"Bim","magaza_resim_ad":"bim.png","magaza_adres":"Barbaros Mah.","magaza_tel":"02245555555","kategori":{"kategori_id":"2","kategori_ad":"Market"}},{"magaza_id":"6","magaza_ad":"Carrefour","magaza_resim_ad":"carrefour.png","magaza_adres":"Bursa","magaza_tel":"0224666666","kategori":{"kategori_id":"2","kategori_ad":"Market"}}],"success":1}';
  var jsonVeri = json.decode(veri);
  var magazaCevap = MagazalarCevap.fromJson(jsonVeri);
  var success = magazaCevap.success;
  var magazalar = magazaCevap.magazalar;


    print("Başarı: $success");
    print("********************************");
    for(var m in magazalar){
      print("*************************");
      print("urun id : ${m.magaza_id}");
      print("urun adi : ${m.magaza_ad}");
      print("urun resimadi : ${m.magaza_resim_ad}");
      print("magaza_tel : ${m.magaza_tel}");
      print("magaza adres : ${m.magaza_adres}");
      print("magaza Kategori ad : ${m.kategori.kategori_ad}");
    }
 
 }

  void filmParse(){
    String veri = '{"filmler":[{"film_id":"1","film_ad":"Interstellar","film_yil":"2015","film_resim":"interstellar.png","kategori":{"kategori_id":"4","kategori_ad":"Bilim Kurgu"},"yonetmen":{"yonetmen_id":"1","yonetmen_ad":"Christopher Nolan"}},{"film_id":"2","film_ad":"Inception","film_yil":"2010","film_resim":"inception.png","kategori":{"kategori_id":"4","kategori_ad":"Bilim Kurgu"},"yonetmen":{"yonetmen_id":"1","yonetmen_ad":"Christopher Nolan"}},{"film_id":"3","film_ad":"The Pianist","film_yil":"2002","film_resim":"thepianist.png","kategori":{"kategori_id":"3","kategori_ad":"Drama"},"yonetmen":{"yonetmen_id":"4","yonetmen_ad":"Roman Polanski"}},{"film_id":"4","film_ad":"Bir Zamanlar Anadoluda","film_yil":"2011","film_resim":"birzamanlaranadoluda.png","kategori":{"kategori_id":"3","kategori_ad":"Drama"},"yonetmen":{"yonetmen_id":"3","yonetmen_ad":"Nuri Bilge Ceylan"}},{"film_id":"5","film_ad":"The Hateful Eight","film_yil":"2015","film_resim":"thehatefuleight.png","kategori":{"kategori_id":"1","kategori_ad":"Aksiyon"},"yonetmen":{"yonetmen_id":"2","yonetmen_ad":"Quentin Tarantino"}},{"film_id":"18","film_ad":"Django","film_yil":"2013","film_resim":"django.png","kategori":{"kategori_id":"1","kategori_ad":"Aksiyon"},"yonetmen":{"yonetmen_id":"2","yonetmen_ad":"Quentin Tarantino"}}],"success":1}';
    var jsonVeri = json.decode(veri);
    var filmCevap = FilmlerCevap.fromJson(jsonVeri);
    var success= filmCevap.success;
    var filmler= filmCevap.filmler;


    print("Başarı: $success");
    print("********************************");
    for(var f in filmler){
      print("*************************");
      print("Film id : ${f.film_id}");
      print("Film adi : ${f.film_ad}");
      print("Film resim : ${f.film_resim}");
      print("Film yıl : ${f.film_yil}}");
      print("Film kategori : ${f.kategori.kategori_ad}");
      print("Film Yonetmen ad : ${f.yonetmen.yonetmen_ad}");
    }
 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Json Parse Kullanım"),),
      body: const Center(),
      
    );
  }
}