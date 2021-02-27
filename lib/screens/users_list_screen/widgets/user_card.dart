import 'package:flutter/material.dart';
import 'package:widgets_intro/models/user.dart';
import 'package:widgets_intro/screens/user_details_screen/user_details_screen.dart';

class UserCard extends StatelessWidget {
  final User user;

  UserCard({this.user});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: AssetImage(user.avatar),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              '${user.name} ${user.surname}',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
            Text(
              '${user.age}',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              user.description,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => UserDetailsScreen(
            user: user,
          ),
        ),
      ),
    );
  }
}
