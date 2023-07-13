import 'package:flutter/material.dart';

class Exe08 extends StatefulWidget {



  @override
  State<Exe08> createState() => _Exe08State();
}

class _Exe08State extends State<Exe08> {

  List<String> task = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 8 - Lista de tarefas"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: TextField(decoration: InputDecoration(labelText: "Tarefa",),
                    ),
                  ),
                 ElevatedButton(onPressed: (){
                      setState(() {
                        task.add("String");
                      });
                 }, child: Text("Adicionar")),

                ],
              ),
            Expanded(
                child: ListView.builder(
                  itemCount: task.length,
                  itemBuilder: (_, index) {
                    return ListTile(
                      title: Text(task[index]),
                      trailing: Checkbox(value: true,
                      onChanged: (value) {

                      },),

                    );

                  },


                )
            )
          ],
        ),
      ),
    );
  }
}


class Task{
  String description = "";
}
