import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/exercises/exe11/exe11_user_model.dart';

import '../models/User.dart';

class UserController {
  late User user;

  _containsImg(User user) {
    var initialLetterName = user.name[0];

    return CircleAvatar(
    );
  }
}
