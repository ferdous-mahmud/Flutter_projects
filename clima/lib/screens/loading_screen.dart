import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}
class _LoadingScreenState extends State<LoadingScreen> {

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
    print(location.latitude);
    print(location.longitude);
  }

  void getData() async {
    var url = Uri.https('api.openweathermap.org/data/2.5/weather?id=2172797&appid', '/books/v1/volumes', {'q': '{http}'});
    var response = await http.get(url);
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
