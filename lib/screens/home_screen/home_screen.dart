import 'package:flutter/material.dart';
import 'package:widgets_intro/screens/home_screen/widgets/home_body.dart';
import 'package:widgets_intro/widgets/appbar.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        title: 'Home',
        actionIcons: {
          Icons.search: 'Search button',
          Icons.navigate_next: 'Next page button',
        },
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
