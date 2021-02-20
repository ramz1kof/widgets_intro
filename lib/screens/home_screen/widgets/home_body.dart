import 'package:flutter/material.dart';
import 'package:widgets_intro/screens/home_screen/widgets/points_button.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int _points = 0;

  void _oneTapPointsIncrement() {
    setState(() {
      ++_points;
    });
  }

  void _doubleTapPointsIncrement() {
    setState(() {
      _points = _points + 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Hello it`s let\'sGG. And your points are: $_points',
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
          PointsButton(
            onDoubleTap: _doubleTapPointsIncrement,
            onTap: _oneTapPointsIncrement,
          ),
        ],
      ),
    );
  }
}
