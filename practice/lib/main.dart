import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Practice App',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Practice App'),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Hello World'),
      ),
    );
  }
}

/* 
void main() {
  runApp(CupertinoApp(
    debugShowCheckedModeBanner: false,
    home: CupertinoPageScaffold(
      child: Center(child: Text('Hello Cupertino')),
    ),
  ));
}
 */
