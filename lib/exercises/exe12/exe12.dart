import 'package:flutter/material.dart';
import 'package:flutter_project/exercises/exe12/exe12_confirmation.dart';

class Exe12 extends StatefulWidget {
  @override
  State<Exe12> createState() => _Exe12State();
}

class _Exe12State extends State<Exe12> {
  List<Person> person = [
    Person(name: "Hot Dog"),
    Person(name: "Pizza"),
    Person(name: "Churrasco"),
    Person(name: "Sushi"),
    Person(name: "Lasanha"),
  ];

  Future<bool?> deleted() async {
    var personRes = await Navigator.of(context).push(
      MaterialPageRoute(builder: (context)=> Exe12Confirmation())
    );
    if (!mounted) {
      return null;
    }
    return personRes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 12"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: person.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.fastfood),
                    title: Text(person[index].name),
                    trailing: IconButton(icon: Icon(Icons.delete),
                    onPressed: (){

                        deleted().then((value) {
                          if(value == null){
                            return;
                          }else{
                            setState(() {
                              person.removeAt(index);
                            });
                          }

                        });

                      });
                    },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Person {
  String name;
  bool? isDelete;

  Person({required this.name, this.isDelete});
}
