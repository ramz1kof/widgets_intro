import 'package:flutter/material.dart';
import 'package:widgets_intro/widgets/appbar.dart';

class ProfileScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Profile',
        actionIcons: <IconData, String>{
          Icons.edit: 'Edit button',
          Icons.home_outlined: 'Home icon',
        },
        onFirstIconTap: () => print('Account button was tapped'),
        navigateOnTap: () => Navigator.pop(context),
      ),
      body: Center(
        child: Text(
          'My profile',
        ),
      ),
    );
  }
}
