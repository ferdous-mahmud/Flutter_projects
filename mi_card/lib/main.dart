import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Container(
          /*  color: Colors.red, */
          child: Text(
            '2.05 Mbps',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 13,
              fontFamily: 'Raleway',
            ),
          ),
          margin: EdgeInsets.only(left: 30.0, top: 6.0),
        ),
      ),
    );
  }
}
