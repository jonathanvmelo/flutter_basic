
import 'package:flutter/material.dart';

class LoginController{

  ValueNotifier<bool> inLouder = ValueNotifier<bool>(false);
  String? login;
  String? pass;

  Future<bool> auth() async {
    //inLouder.value = true;
    await Future.delayed(Duration(seconds: 3));
   // inLouder.value = false;
    return login == "admin" && pass == '123';
  }
}