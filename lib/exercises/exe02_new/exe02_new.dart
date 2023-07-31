// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class Exe02 extends StatefulWidget {
  const Exe02({super.key});

  @override
  State<Exe02> createState() => _Exe02State();
}

class _Exe02State extends State<Exe02> {
  final List<String> text = List.generate(3, (index) => "Texo $index ");
  Color _color = Colors.black;
  double fontSize = 18.0;

  Timer? _timer; // Adiciona um Timer para controlar a animação

  void changeColor() {
    RandomColor randomColor = RandomColor();
    final Color newColor =
        randomColor.randomColor(colorBrightness: ColorBrightness.dark);
    setState(() {
      fontSize = Random().nextDouble() * 30 + 15;
      _color = newColor;
    });
  }

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      changeColor();
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancela o Timer no dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercício 2"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: text.length,
        itemBuilder: (context, index) {
          return Container(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                  child: Text(
                'Teste $index',
                style: TextStyle(
                  fontSize: fontSize,
                  color: _color,
                ),
              )));
        },
      ),
    );
  }
}
