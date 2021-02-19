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
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 200.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 150.0,
                        width: 400.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Слава',
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 150.0,
                        width: 400.0,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Україні',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
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
