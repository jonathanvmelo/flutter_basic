import 'package:flutter/material.dart';

class Exe09Pag2 extends StatefulWidget {
  const Exe09Pag2({super.key});

  @override
  State<Exe09Pag2> createState() => _Exe09Pag2State();
}

class _Exe09Pag2State extends State<Exe09Pag2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercicio 9"),
      ),
      body: Container(
        child: Center(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Ir para a primeira tela"),
            )
        ),
      ),


    );
  }
}
