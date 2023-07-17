import 'package:flutter/material.dart';

import 'exe09_pag2.dart';


class Exe09 extends StatefulWidget {
  const Exe09({super.key});

  @override
  State<Exe09> createState() => _Exe09State();
}

class _Exe09State extends State<Exe09> {
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
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Exe09Pag2())
                );
              },
              child: Text("Ir para a segunda tela"),
            )
        ),
      ),


    );
  }
}
