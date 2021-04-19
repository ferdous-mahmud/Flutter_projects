import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{
  NetworkHelper({@required this.url,@required this.path, @required this.lat, @required this.lon, @required this.appid});

  final String url;
  final String path;
  final String lat;
  final String lon;
  final String appid;
 
  Future getData() async{

   /*  http.Response response = await http.get(Uri.http('$url','$path', details)); */
    http.Response response = await http.get(Uri.http('$url','$path',{'lat':'$lat','lon':'$lon', 'appid':'$appid'}));
      if(response.statusCode == 200){
          String data = response.body;
          return  jsonDecode(data);
        }else{
          print(response.statusCode);
          return 'Network Error! Please check your internet connection.';
        } 
  }
}
