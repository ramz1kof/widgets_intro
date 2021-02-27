import 'package:flutter/material.dart';
import 'package:widgets_intro/models/user.dart';

class UserCard extends StatelessWidget {
  final User user;

  UserCard({this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(user.avatar),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.centerLeft,
      child: Column(
        children: <Widget>[
          Text(
            '${user.name} ${user.surname}',
            style: TextStyle(),
          ),
        ],
      ),
    );
  }
}
