import 'package:flutter/material.dart';
import 'package:widgets_intro/screens/home_screen/widgets/print_button.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Hello it`s let\'sGG',
            style: TextStyle(
              color: Colors.amber[400],
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
              decorationColor: Colors.blueAccent,
              decorationThickness: 3.0,
              decorationStyle: TextDecorationStyle.wavy,
            ),
          ),
          Container(
            height: 30.0,
          ),
          PrintButton(),
        ],
      ),
    );
  }
}
