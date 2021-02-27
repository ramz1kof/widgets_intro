import 'package:flutter/material.dart';
import 'package:widgets_intro/widgets/appbar.dart';

class UserDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Profile',
        actionIcons: <IconData, String>{
          Icons.edit: 'Edit button',
          Icons.home_outlined: 'Home button',
        },
        onFirstIconTap: () => print('Account button was tapped'),
        navigateOnTap: () => Navigator.pushNamed(context, '/'),
      ),
      body: Center(
        child: Text(
          'My profile',
        ),
      ),
    );
  }
}
