
import 'package:flutter/material.dart';

class  Exe04 extends StatelessWidget {

  TextEditingController valor1 = TextEditingController();

  double? _resultado;
  double get resultado => _resultado!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: valor1,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Valor 1"
            ),
          ),
          TextField(
            controller: valor1,
            decoration: InputDecoration(
                labelText: "Valor 1"
            ),
          ),
          Text("Resultado:"),
          TextButton(onPressed: (){}, child: Row()),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {

  String title;
  Color color;


  CustomAppBar(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(color.value),
      title: Text(title),
    );
  }
}
