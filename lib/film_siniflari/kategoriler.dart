class Kategoriler {
  
  String kategori_id;
  String kategori_ad;

  Kategoriler({required this.kategori_ad,required this.kategori_id});

  factory Kategoriler.fromJson(Map<String,dynamic> json){

    return Kategoriler(kategori_ad: json["kategori_id"] as String, kategori_id: json["kategori_ad"] as String);
  }
}