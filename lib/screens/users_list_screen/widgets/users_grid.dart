import 'package:flutter/material.dart';
import 'package:widgets_intro/models/user.dart';
import 'package:widgets_intro/screens/users_list_screen/widgets/user_card.dart';

var users = <User>[
  User(
    'Ostap',
    'Koziaryk',
    18,
    avatar: 'assets/images/ok.png',
    description: 'Flutter developer',
  ),
  User(
    'Roman',
    'Tupis',
    18,
    avatar: 'assets/images/rt.png',
    description: 'Kotlin developer',
  ),
  User(
    'Zenoviy',
    'Haiduk',
    18,
    avatar: 'assets/images/zh.png',
    description: 'ReactJS developer',
  ),
];

class UsersGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      padding: EdgeInsets.all(20.0),
      children: users
          .map((user) => UserCard(
                user: user,
              ))
          .toList(),
    );
  }
}
