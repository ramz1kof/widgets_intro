import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Map<IconData, String> actionIcons;
  final Function onFirstIconTap;
  final Function navigateOnTap;

  MyAppBar(
      {this.title, this.actionIcons, this.onFirstIconTap, this.navigateOnTap});

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
          onPressed: onFirstIconTap,
          tooltip: actionIcons.values.toList()[0],
        ),
        IconButton(
          icon: Icon(
            actionIcons.keys.toList()[1],
          ),
          onPressed: navigateOnTap,
          tooltip: actionIcons.values.toList()[1],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
