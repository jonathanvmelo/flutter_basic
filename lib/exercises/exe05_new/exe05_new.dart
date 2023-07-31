import 'package:flutter/material.dart';

class Exe05 extends StatefulWidget {
  Exe05({super.key});

  @override
  State<Exe05> createState() => _Exe05State();
}

class _Exe05State extends State<Exe05> {
  PageController _controller = PageController();
  int indexBottomBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercício 5'),
        centerTitle: true,
      ),
      body: PageView(
        controller: _controller,
        children: const [
          Image(
              image: NetworkImage(
                  'https://m.vitoria.es.gov.br/recursos/imagens/banco/2020/12/02/89226/ampliada.jpg')),
          Image(
              image: NetworkImage(
                  "https://media.semprefamilia.com.br/semprefamilia/2017/11/4-7e577e12.jpg")),
          Image(
              image: NetworkImage(
                  "https://mid.curitiba.pr.gov.br/2017/capa/00213402.jpg"))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottomBar,
        onTap: (int index) {
          setState(() {
            indexBottomBar = index;
          });

          _controller.animateToPage(index,
              duration: Duration(milliseconds: 800), curve: Curves.ease);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo), label: "Foto 1"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo), label: "Foto 2"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo), label: "Foto 3"),
        ],
      ),
    );
  }
}
