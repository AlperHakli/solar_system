class Headerss {


  String header;
  String header_id;


  Headerss({required this.header, required this.header_id});



  factory Headerss.fromjson(Map<dynamic, dynamic> json, String key)
  {
    return Headerss(header: json["headers"] as String, header_id: key);
  }



}
