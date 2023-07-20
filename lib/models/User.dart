import 'package:flutter/material.dart';

class User {
  String name, email;
  String? course, imageUrl;

  User({required this.name, required this.email, this.course, this.imageUrl});
}