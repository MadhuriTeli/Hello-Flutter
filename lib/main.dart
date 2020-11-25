
//on clicked refresh change state and display other greeting
//use with .dart extension


import 'package:flutter/material.dart';

void main() => runApp(HelloFlutterApp());

class HelloFlutterApp extends StatefulWidget {
  @override
  _HelloFlutterAppState createState() => _HelloFlutterAppState();
}

String englishGreeting = "Hello Flutter !";

//CHALLENGE #1: Change greeting's language
String otherGreeting = "Namste!!!!!";

class _HelloFlutterAppState extends State<HelloFlutterApp> {
  String displayText = englishGreeting;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter App"),
          leading: Icon(Icons.home),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                setState(() {
                  displayText = displayText == englishGreeting
                      ? otherGreeting
                      : englishGreeting;
                });
              },
            )
          ],
        ),
        body: Center(
          child: Text(
            displayText,
            //CHALLENGE #2 & #3 : Do each challenge one by one.
            //style: TextStyle(fontWeight: bold),
            style: TextStyle(fontSize: 48 , fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
