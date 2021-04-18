import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}
class _LoadingScreenState extends State<LoadingScreen> {

  final String apiKey = '979a625e81843868b88a359e97c97908';
  double latitude;
  double longitude;
  

  @override
  void initState() {
    super.initState();
    getLocation();
    getData();
  }
  // Get location using geolocator 
  void getLocation() async{
    Location location = Location();
    await location.getCurrentLocatin();
    latitude = location.latitude;
    longitude = location.longitude;
  }

  void getData() async {
    var uri = Uri.https('api.openweathermap.org', 'data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');
    http.Response response = await http.get(uri);
    if(response.statusCode == 200){
        String data = response.body;

        var decodedData = jsonDecode(data);

        var lon = decodedData['coord']['lon'];
        print('Longitude $lon');
      }else{
        int statusCode = response.statusCode;
        print('Status Code => $statusCode');
      } 
      print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
