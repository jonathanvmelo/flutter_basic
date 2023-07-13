  import 'package:flutter/material.dart';

  class Exe07 extends StatefulWidget {
    @override
    State<Exe07> createState() => _Exe07State();
  }

  class _Exe07State extends State<Exe07> {

    List<ConvidadoModel> convidados = [
      ConvidadoModel(name: "Apolonio", image: "https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2017/01/formacao_sera-que-sou-uma-pessoa-que-tem-virtudes.jpg"),
      ConvidadoModel(name: "B", image: "https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2017/01/formacao_sera-que-sou-uma-pessoa-que-tem-virtudes.jpg"),
      ConvidadoModel(name: "Antetecmon", image: "https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2017/01/formacao_sera-que-sou-uma-pessoa-que-tem-virtudes.jpg")
    ];


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Exercício 7"),
        ),
        body: ListView.builder(
          itemCount: convidados.length + 1,
          itemBuilder: (context, index) {}
        ),
      );
    }
  }

class ConvidadoModel {
    String name = "";
    String image = "";

    ConvidadoModel({ required this.name, required this.image });
}
