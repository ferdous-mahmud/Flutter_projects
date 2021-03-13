import 'dart:typed_data';

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
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('images/user.png'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Angela Yu',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    margin: EdgeInsets.all(5),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'FLUTTER DEVELOPER',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                        color: Colors.teal[100],
                      ),
                    ),
                    margin: EdgeInsets.all(5),
                  ),
                ],
              ),
              SizedBox(
                width: 150.0,
                child: Divider(
                  color: Colors.teal[200],
                ),
              ),
              Card(
                margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    '+44 123 456 789',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.5,
                      color: Colors.teal[900],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    'example@gmail.com',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.5,
                      color: Colors.teal[900],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
