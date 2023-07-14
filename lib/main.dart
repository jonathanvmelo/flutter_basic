import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/componets/themes/dark_theme.dart';
import 'package:flutter_project/componets/themes/light_theme.dart';
import 'package:flutter_project/exe01/exe01.dart';
import 'package:flutter_project/exe03/exe03.dart';
import 'package:flutter_project/exe04/exe04.dart';
import 'package:flutter_project/exe10/exe10.dart';
import 'package:flutter_project/exe10/exe10_pag2.dart';
import 'package:flutter_project/views/home.dart';
import 'package:flutter_project/exe02/exe02.dart';
import 'package:flutter_project/views/login_page.dart';
import 'package:flutter_project/views/splash_page.dart';

import 'exe05/exe05.dart';
import 'exe06/exe06.dart';
import 'exe07/exe07.dart';
import 'exe08/exe08.dart';
import 'exe09/exe09_pag1.dart';

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
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        initialRoute: "/exe10",
        routes: {
          '/splash': (context) => Splash(),
          '/login': (context) => LoginPage(),
          '/home': (context)=> HomePage(),
          '/exe1' : (context) => Exe01(),
          '/exe2' : (context) => Exe02(),
          '/exe3' : (context) => Exe03(),
          '/exe4' : (context) => Exe04(),
          '/exe5' : (context) => Exe05(),
          '/exe6' : (context) => Exe06(),
          '/exe7' : (context) => Exe07(),
          '/exe8' : (context) => Exe08(),
          '/exe9' : (context) => Exe09(),
          '/exe10' : (context) => Exe10(),
          '/exe10pag2' : (context) => Exe10Pag2(),
        },
        debugShowCheckedModeBanner: false,
       );
  }
}
