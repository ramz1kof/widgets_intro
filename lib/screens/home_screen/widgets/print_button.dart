import 'package:flutter/material.dart';

class PrintButton extends StatelessWidget {
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () => print('Button was tapped twice'),
      onTap: () => print('Button was tapped'),
      child: Container(
        height: 50.0,
        width: 200.0,
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            'let\'sGG',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
              fontFamily: 'Lilita One',
            ),
          ),
        ),
      ),
    );
  }
}
