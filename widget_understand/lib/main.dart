/* 
----------------------------------------------------------------------
                     Widgets for flutter app
----------------------------------------------------------------------

  App Lavel Widgets --

              MaterialApp() / CupertinoApp()

                      title:
                      theme:
                      home:
                      routes:


  Page Level Widgets --
              
              Scaffold() / CupertinoPageScaffold()

                      appBar:
                      body:
                      bottomNavigationBar:
                      drawer:
                      backgroundColor:
                      floationActionButton:
                      bottomSheet:

 */
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Widgets Example',
      // theme start --------------------*
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        fontFamily: 'Georgia',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      // theme end --------------------//

      // home start --------------------*
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Example'),
        ),
        body: Center(
          child: Text('Body'),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Text('Bottom App Bar'),
        ),
        drawer: Drawer(
          child: Text('Drawer'),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // onPressed Code here!
          },
          label: Text('FloatingActionButton'),
        ),
      ),
      // home end ----------------------//
    ),
  );
}
