import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class Exe01Page extends StatefulWidget {
  Exe01Page({Key? key}) : super(key: key);

  @override
  State<Exe01Page> createState() => _Exe01State();
}

class _Exe01State extends State<Exe01Page> {
  Color textColor = Colors.black;
  double fontSize = 18.0;
  Timer? _timer; // Variável para manter referência ao Timer

  void changeTextColor() {
    RandomColor randomColor = RandomColor();
    final Color newColor =
        randomColor.randomColor(colorBrightness: ColorBrightness.dark);

    setState(() {
      textColor = newColor;
      fontSize = Random().nextDouble() * 30 +
          15; // Tamanho de fonte aleatório entre 15 e 45
    });
  }

  @override
  void initState() {
    super.initState();

    // Iniciar o Timer apenas se ele não foi iniciado ainda
    _timer ??= Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      changeTextColor();
    });
  }

  @override
  void dispose() {
    // Cancelar o Timer para evitar o erro "setState() called after dispose()"
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercício 01'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Flutter é legal :)",
              style: TextStyle(
                  color: textColor,
                  fontSize: fontSize,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
