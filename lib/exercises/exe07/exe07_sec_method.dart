import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

import 'guest_model.dart';

class Exe7SecMethod extends StatefulWidget {
  const Exe7SecMethod({Key? key}) : super(key: key);

  @override
  State<Exe7SecMethod> createState() => _Exe7SecMethodState();
}

class _Exe7SecMethodState extends State<Exe7SecMethod> {
  List<GuestModel> _guestList = [
    GuestModel(name: "Aline", image: "https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2017/01/formacao_sera-que-sou-uma-pessoa-que-tem-virtudes.jpg"),
    GuestModel(name: "Barbara", image: "https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2017/01/formacao_sera-que-sou-uma-pessoa-que-tem-virtudes.jpg"),
    GuestModel(name: "Joaquim", image: ""),
    GuestModel(name: "Catarina", image: "https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2017/01/formacao_sera-que-sou-uma-pessoa-que-tem-virtudes.jpg"),
    GuestModel(name: "Matarina", image: ""),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 7"),
      ),
      body: ListView.builder(
        itemCount: _guestList.length,
        itemBuilder: (context, index) {
          return Padding(padding: EdgeInsets.symmetric(vertical: 3),
              child: _buildGuestList(_guestList[index], index));
        },
      ),
    );
  }

  _buildGuestList(GuestModel model, index) {

    RandomColor _randomColor = RandomColor();
    Color _color = _randomColor.randomColor(colorBrightness: ColorBrightness.light);

    var initialName = model.name[0].toUpperCase();

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: _color,
        foregroundColor: Colors.black,
        backgroundImage: model.image!.isNotEmpty ? NetworkImage(model.image!) : null,
        radius: 20,
        child: model.image!.isNotEmpty
            ? null
            : Text(
                initialName,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              ),
      ),
      title: Text(model.name),
      trailing: Container(
        width: 80,
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  _editName(index);
                },
                icon: Icon(Icons.edit)),
            IconButton(onPressed: () {}, icon: Icon(Icons.delete_outline))
          ],
        ),
      ),
    );
  }

  _editName(int index) {
    String tempName = _guestList[index].name;
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Editar convidado"),
            content: TextFormField(
              initialValue: tempName,
              onChanged: (value) => tempName = value,
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _guestList[index].name = tempName;
                  });
                  Navigator.pop(context);
                },
                child: Text("Salvar"),
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.teal)),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancelar"),
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.teal)),
              ),

            ],
          );
        });
  }
}
