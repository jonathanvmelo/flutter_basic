import 'package:flutter/material.dart';


import 'guest_model.dart';

class Exe07 extends StatefulWidget {
  @override
  State<Exe07> createState() => _Exe07State();
}

class _Exe07State extends State<Exe07> {
  TextEditingController _controller = TextEditingController();

  List<GuestModel> _guestList = [
    GuestModel(name: "Aline", image: "https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2017/01/formacao_sera-que-sou-uma-pessoa-que-tem-virtudes.jpg"),
    GuestModel(name: "Barbara", image: "https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2017/01/formacao_sera-que-sou-uma-pessoa-que-tem-virtudes.jpg"),
    GuestModel(name: "Catarina", image: "https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2017/01/formacao_sera-que-sou-uma-pessoa-que-tem-virtudes.jpg")
  ];
  
  //var initialName = _guestList[0].name.toUpperCase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Exercício 7"),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        height: 300,
        child: ListView.builder(
          itemCount: _guestList.length,
          itemBuilder: (context, index) {
            return Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.transparent,
                    //backgroundImage: NetworkImage(_guestList[index].image),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(_guestList[index].name),
                      subtitle: Text("Clique aqui para editar", style: TextStyle(fontSize: 12)),
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
