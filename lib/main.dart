import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/controllers/theme_controller.dart';
import 'package:flutter_project/exercises/exe07/exe07.dart';
import 'package:flutter_project/exercises/exe11/exe11_welcome.dart';
import 'package:flutter_project/exercises/exe12/exe12_confirmation.dart';
import 'package:flutter_project/exercises/exe13/exe13.dart';
import 'package:flutter_project/additional_exercises/home_card.dart';
import 'package:flutter_project/pages/home/home_page.dart';
import 'package:flutter_project/pages/login/login_page.dart';
import 'package:flutter_project/pages/login/register_page.dart';
import 'package:flutter_project/pages/login/welcome_page.dart';
import 'package:flutter_project/additional_exercises/home_app_bar.dart';
import 'exercises/exe01/exe01.dart';
import 'exercises/exe02/exe02.dart';
import 'exercises/exe03/exe03.dart';
import 'exercises/exe04/exe04.dart';
import 'exercises/exe05/exe05.dart';
import 'exercises/exe06/exe06.dart';
import 'exercises/exe08/exe08.dart';
import 'exercises/exe09/exe09_pag1.dart';
import 'exercises/exe10/exe10.dart';
import 'exercises/exe11/exe11.dart';
import 'exercises/exe12/exe12.dart';
import 'exercises/exe14/Exe14.dart';

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
    return AnimatedBuilder(builder: (context, child) {
      return MaterialApp(
        theme: ThemeData(
          brightness: ThemeController.instance.isDarkTheme ? Brightness.dark : Brightness.light,
        ),
        initialRoute: '/welcome',
        routes: {
          '/login': (context) => LoginPage(),
          '/register': (context) => RegisterPage(),
          '/welcome': (context) => WelcomePage(),
          '/home': (context) => HomePage(),
          '/home_card': (context) => HomeCard(),
          '/home_app_bar': (context) => HomeAppBar(),
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
          '/exe12': (context) => Exe12(),
          '/exe12_confirmation': (context) => Exe12Confirmation(),
          '/exe13': (context) => Exe13(),
          '/exe14': (context) => Exe14(),

        },
        debugShowCheckedModeBanner: false,
      );
    }, animation: ThemeController.instance,
    );
  }
}
