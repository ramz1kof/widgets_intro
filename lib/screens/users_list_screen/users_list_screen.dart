import 'package:flutter/material.dart';
import 'package:widgets_intro/screens/users_list_screen/widgets/users_grid.dart';
import 'package:widgets_intro/widgets/appbar.dart';

class UserListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Users',
        actionIcons: <IconData, String>{
          Icons.add_circle: 'Add user button',
          Icons.home_outlined: 'Home button',
        },
        navigateOnTap: () => Navigator.pushNamed(context, '/user_details'),
      ),
      body: UsersGrid(),
    );
  }
}
