import 'package:flutter/material.dart';
import 'package:widgets_intro/screens/home_screen/widgets/home_body.dart';
import 'package:widgets_intro/widgets/appbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Home',
        actionIcons: <IconData, String>{
          Icons.search: 'Search button',
          Icons.navigate_next: 'Next page button',
        },
        onFirstIconTap: () => print('Search icon was tapped'),
        navigateOnTap: () => Navigator.pushNamed(context, '/users'),
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
