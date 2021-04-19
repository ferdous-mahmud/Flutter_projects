import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:clima/screens/location_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}
class _LoadingScreenState extends State<LoadingScreen> {

  final String appId = '979a625e81843868b88a359e97c97908';
  double latitude;
  double longitude;
  

  @override
  void initState() {
    super.initState();
    getLocationData();
  }
  // Get location using geolocator 
  void getLocationData() async{
    Location location = Location();
    await location.getCurrentLocatin();

    latitude = location.latitude;
    longitude = location.longitude;
    
    NetworkHelper networkHelper = NetworkHelper(url:'api.openweathermap.org', path:'/data/2.5/weather', lat: '$latitude', lon: '$longitude', appid: '$appId');

    var weatherData = await networkHelper.getData();
   
    double temperature = weatherData['main']['temp'];
    String condition = weatherData['weather'][0]['main'];
    String cityName = weatherData['name'];

    print('Temperature = $temperature  Condition = $condition  City = $cityName');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LocationScreen(),
    );
  }
}
