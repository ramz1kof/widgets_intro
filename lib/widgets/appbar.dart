import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title;
  final Map<IconData, String> actionIcons;

  HomeAppBar({this.title, this.actionIcons});

  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.menu),
        tooltip: 'Menu button',
        onPressed: () {},
      ),
      title: Text(
        title,
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            actionIcons.keys.toList()[0],
          ),
          onPressed: () {},
          tooltip: actionIcons.values.toList()[0],
        ),
        IconButton(
          icon: Icon(
            actionIcons.keys.toList()[1],
          ),
          onPressed: () {},
          tooltip: actionIcons.values.toList()[1],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
