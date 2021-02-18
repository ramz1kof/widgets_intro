import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(MyApp(
    title: Text(
      'Hello world',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {
  final Widget title;

  MyApp({this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Material(
          child: Column(
            children: [
              Container(
                height: 56.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.menu_outlined),
                      tooltip: 'Menu button',
                      color: Colors.white,
                      onPressed: () {},
                    ),
                    Expanded(
                      child: title,
                    ),
                    IconButton(
                      icon: Icon(Icons.search),
                      tooltip: 'Search button',
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'Hello world',
                    style: TextStyle(
                      color: Colors.purple[900],
                      fontSize: 40.0,
                      decoration: TextDecoration.underline,
                      decorationThickness: 3.0,
                      decorationColor: Colors.green[800],
                      decorationStyle: TextDecorationStyle.double,
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
