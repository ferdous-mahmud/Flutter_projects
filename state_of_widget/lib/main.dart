/* 
--------------------------------------------------------------------------------
                               State of Widget
--------------------------------------------------------------------------------

    2 kinds of widgets:

               ## StatelessWidget

               ## StatefulWidget

                  initState() -- use for create each state object
                  setState() -- use for changing internal state of widget
                  ## -- A widget state is store in a state object

 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'State of widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('State of widget'),
        ),
        body: MyApp(),
      ),
    ),
  );
}

// Stateless Widget ------------------------------------------------------------

// class emplemented for test StatlessWidget
class AppBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton('Button 1'),
          SizedBox(
            height: 10,
          ),
          CustomButton('Button 2'),
          SizedBox(
            height: 10,
          ),
          CustomButton('Button 3'),
          SizedBox(
            height: 10,
          ),
          CustomButton('Button 4'),
        ],
      ),
    );
  }
}

// custom class build for custom button
class CustomButton extends StatelessWidget {
  final String btName;
  num tapCount = 0;
  CustomButton(this.btName);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        tapCount++;
        print('Taped $tapCount Times');
      },
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.lightBlueAccent,
        ),
        child: Center(
          child: Text(btName),
        ),
      ),
    );
  }
}

// Stateful Widget -------------------------------------------------------------

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String txt = " ";
  num value = 0;

  @override
  void initState() {
    txt = "Please press this button";
    value = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('$txt $value times'),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                value++;
                if (value > 10) {
                  txt = "Successfuly pressed";
                } else {
                  txt = "Button Pressed";
                }
              });
              print('Onpressed $txt');
            },
            child: Text('Press'),
          )
        ],
      ),
    );
  }
}
