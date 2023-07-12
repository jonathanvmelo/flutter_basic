

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((__) => Navigator.of(context).pushReplacementNamed('/login'));
  }
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
