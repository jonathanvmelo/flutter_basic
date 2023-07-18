import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/exercises/exe07/exe07.dart';
import 'package:flutter_project/exercises/exe11/exe11_welcome.dart';
import 'package:flutter_project/views/home/home_page.dart';
import 'package:flutter_project/views/login/login_page.dart';
import 'package:flutter_project/views/login/register_page.dart';
import 'package:flutter_project/views/login/welcome_page.dart';
import 'package:flutter_project/views/splash_page/splash_page.dart';
import 'exercises/exe01/exe01.dart';
import 'exercises/exe02/exe02.dart';
import 'exercises/exe03/exe03.dart';
import 'exercises/exe04/exe04.dart';
import 'exercises/exe05/exe05.dart';
import 'exercises/exe06/exe06.dart';
import 'exercises/exe07/exe07_sec_method.dart';
import 'exercises/exe08/exe08.dart';
import 'exercises/exe09/exe09_pag1.dart';
import 'exercises/exe10/exe10.dart';
import 'exercises/exe10/exe10_pag2.dart';
import 'exercises/exe11/exe11.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/welcome': (context) => WelcomePage(),
        '/home': (context) => HomePage(),
        '/exe01': (context) => Exe01(),
        '/exe02': (context) => Exe02(),
        '/exe03': (context) => Exe03(),
        '/exe04': (context) => Exe04(),
        '/exe05': (context) => Exe05(),
        '/exe06': (context) => Exe06(),
        '/exe07': (context) => Exe07(),
        '/exe08': (context) => Exe08(),
        '/exe09': (context) => Exe09(),
        '/exe10': (context) => Exe10(),
        '/exe11': (context) => Exe11(),
        '/exe11_welcome': (context) => Exe11Welcome(),
        '/exe08': (context) => Exe08(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
