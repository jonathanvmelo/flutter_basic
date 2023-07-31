import 'dart:math';

import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  double _height = 200;
  double _width = 200;
  bool isTapped = false;

  _changeSize() {
    setState(() {
       // _width = _width == 100 ? 200 : _width == 200 ? 400 : 100 ;
       // _height = _height == 100 ? 200 : _height == 200 ? 600 : 100;
        isTapped = !isTapped;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: AnimatedContainer(
          curve: Curves.linear,
          alignment: Alignment(0, 0),
          height: _height,
          width: _width,
          decoration: BoxDecoration(
              shape: isTapped ? BoxShape.rectangle : BoxShape.circle,
              color: Colors.grey[300], boxShadow: [BoxShadow(color: Colors.grey.shade500, offset: Offset(4.0, 4.0), blurRadius: 15, spreadRadius: 1.0), BoxShadow(color: Colors.white, offset: Offset(-4.0, -4.0), blurRadius: 15.0, spreadRadius: 1.0)]),
          duration: Duration(seconds: 5),
          child: Text(
            'Flutter',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
       child: Icon(Icons.change_circle_outlined),
        onPressed: () {
          _changeSize();
        },
      ),
    );
  }
}
