import 'package:flutter/material.dart';
import 'package:widgets_intro/models/user.dart';
import 'package:widgets_intro/widgets/appbar.dart';

class UserDetailsScreen extends StatelessWidget {
  final User user;

  UserDetailsScreen({this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'User Details',
        actionIcons: <IconData, String>{
          Icons.edit: 'Edit button',
          Icons.home_outlined: 'Home button',
        },
        onFirstIconTap: () => print('Account button was tapped'),
        navigateOnTap: () => Navigator.pushNamed(context, '/'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image(
              image: AssetImage(
                user.avatar,
              ),
            ),
            Text(
              '${user.name}, ${user.surname}',
            ),
          ],
        ),
      ),
    );
  }
}
