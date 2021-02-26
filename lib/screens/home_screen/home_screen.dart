import 'package:flutter/material.dart';
import 'package:widgets_intro/screens/home_screen/widgets/home_body.dart';
import 'package:widgets_intro/screens/profile_screen/profile_screen.dart';
import 'package:widgets_intro/widgets/appbar.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Home',
        actionIcons: <IconData, String>{
          Icons.search: 'Search button',
          Icons.navigate_next: 'Next page button',
        },
        onFirstIconTap: () => print('Search icon was tapped'),
        navigateOnTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileScreen(),
          ),
        ),
      ),
      body: HomeBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.alarm_add),
        tooltip: 'Add alarm button',
      ),
    );
  }
}
