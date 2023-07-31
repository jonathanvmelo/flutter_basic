

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(Duration(seconds: 5)).then((__) => Navigator.of(context).pushReplacementNamed('/login'));
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: 200,
        width: 200,
        color: Colors.deepPurpleAccent,
      ),
    );
  }
}
