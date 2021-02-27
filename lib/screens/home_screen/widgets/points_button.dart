import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PointsButton extends StatelessWidget {
  final Function onDoubleTap;
  final Function onTap;

  PointsButton({this.onDoubleTap, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onDoubleTap,
      onTap: onTap,
      child: Container(
        height: 50.0,
        width: 200.0,
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        decoration: BoxDecoration(
          color: Colors.purple[900],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            'let\'sGG',
            style: GoogleFonts.lilitaOne(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
