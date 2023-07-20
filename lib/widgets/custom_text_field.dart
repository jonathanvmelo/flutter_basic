import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String? textLabel;
  final TextEditingController controller;
  final Icon? suffixIcon;
  final FormFieldValidator<String> validator;
  final void Function()? onPressed;
  final bool obscureText;

  final TextStyle? style;


  CustomTextField({super.key,
    required this.controller,
    this.textLabel, this.suffixIcon,
    required this.validator,
    this.onPressed,
    this.obscureText = false, this.style});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: style,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        labelText: textLabel,
      ),
      validator: validator,
      obscureText: obscureText,
    );
  }
}
