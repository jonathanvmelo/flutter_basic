import 'package:flutter/material.dart';


class Exe02 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("Exercicio 2"),
     ),
      body: ListView(
        children: [
          TextExe2("Texto 1", Colors.black12),
          TextExe2("Texto 2", Colors.blue),
          TextExe2("Texto 3", Colors.cyan)


        ],
      ),
    );

  }
}


class TextExe2 extends StatelessWidget {

 String text = "Text";

 Color color;

 TextExe2(this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Center(
        child: Text(text, style: TextStyle(color: color),),
      ),
    );
  }
}

