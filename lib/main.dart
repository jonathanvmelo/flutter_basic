import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/componets/drawer/side_menu.dart';
import 'package:flutter_project/views/home.dart';
import 'package:flutter_project/views/home_screen.dart';
import 'package:flutter_project/views/login_page.dart';
import 'package:flutter_project/views/splash_page.dart';

import 'componets/custom_bottom_navigator_bar/custom_bottom_bar.dart';
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

      home: SideMenu(),
        debugShowCheckedModeBanner: false,
       );
  }
}
