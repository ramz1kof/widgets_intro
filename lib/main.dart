import 'package:flutter/material.dart';
import 'package:widgets_intro/screens/home_screen/home_screen.dart';
import 'package:widgets_intro/screens/user_details_screen/user_details_screen.dart';
import 'package:widgets_intro/screens/users_list_screen/users_list_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Widgets Intro',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/users': (context) => UserListScreen(),
      },
    ),
  );
}
