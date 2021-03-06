import 'dart:async';

import 'package:humteampro/Screens/myhome.dart';
import 'package:flutter/material.dart';

class SpleashScreen extends StatefulWidget {
  @override
  _SpleashScreenState createState() => _SpleashScreenState();
}

class _SpleashScreenState extends State<SpleashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    display();
  }

  display() {
    Timer(Duration(seconds: 5), () {
      Route route = MaterialPageRoute(
        builder: (_) => MyHome(),
      );
      Navigator.push(context, route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [Colors.orange, Colors.red],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Hero(
        tag: 'logo',
        child: Image(
          image: AssetImage('images/Logo_humteam_white.png'),
        ),
      ),
    );
  }
}
