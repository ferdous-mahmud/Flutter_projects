import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Screen 2'),
      ),
      body: Center(
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
          child: Text(
            'Go Back To Screen 1',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/first');
          },
        ),
      ),
    );
  }
}
