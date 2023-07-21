import 'package:flutter/material.dart';
import 'package:flutter_project/exercises/exe08/task_model.dart';

class Exe08 extends StatefulWidget {
  @override
  State<Exe08> createState() => _Exe08State();
}

class _Exe08State extends State<Exe08> {
  TextEditingController _controller = TextEditingController();

  List<TaskModel> _tasks = [];

  bool? inLouder = false;

  Future<bool> deleting() async{
    inLouder = true;
    await Future.delayed(Duration(seconds: 2));
    inLouder = false;
    return inLouder! ? inLouder = false : inLouder = true ;
  }

  void deleteTask(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Deseja realmente deletar a tarefa?"),
          content: TextFormField(
            initialValue: _tasks[index].text,
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.teal)) ,
              child: const Text("Cancelar"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _tasks.removeAt(index);
                });
                Navigator.pop(context);
              },
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.teal)) ,
              child: const Text("Deletar"),
            ),
          ],
        );
      },
    );
  }

  void updateTask(int index) {
    String tempText = _tasks[index].text;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            "Editar Tarefa",
          ),
          content: TextFormField(
            initialValue: tempText,
            onChanged: (value) {
              setState(() {
                tempText = value;
              });
            },
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancelar"),
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.teal)),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _tasks[index].text = tempText;
                });
                Navigator.pop(context);
              },
              child: const Text("Salvar"),
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.teal)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Row(
          children: [
            Icon(Icons.menu, color: Color(0xFF3A3A3A), size: 30,),
           Container(
             height: 40,
             width: 40,
             child: ClipRect(child: Image.asset("assets/Eu.jpeg"),),
           )
          ],
        ),
        backgroundColor: Color(0xFFEEEFF5),
        elevation: 2,
        actions: [
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Lista de tarefas",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 25),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        label: Text("Task"),
                      ),
                      controller: _controller,
                    ),
                  ),
                  IconButton(onPressed: () {
                    if(!_controller.text.isEmpty){
                      setState(() {
                        _tasks.add(TaskModel(text: _controller.text));
                      });
                      _controller.clear();
                    }
                  }, icon: Icon(Icons.add))
                ],
              ),
            ),
            Container(
              height: 300,
              child: ListView.builder(
                itemCount: _tasks.length,
                itemBuilder: (context, index) => builderList(_tasks[index], index),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 5,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _tasks = [];
              });
              _controller.clear();
            },
            tooltip: "Delete toda a lista ",
            child: const Icon(
              Icons.delete,
            ),
          ),
        ],
      ),
    );
  }

  Widget builderList(TaskModel model, index) {
    TextStyle? txStyle = null;

    if (model.done) {
      txStyle = const TextStyle(
        color: Colors.grey,
        decoration: TextDecoration.lineThrough,
      );
    }

    return ListTile(
      leading: Checkbox(
        value: model.done,
        onChanged: (value) {
          setState(() {
            _tasks[index].done = (value ?? false);
          });
        },
      ),
      title: Text(
        _tasks[index].text,
        style: txStyle, // Aplica o estilo de risco quando a tarefa estiver concluída
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                updateTask(index);
              });
            },
            icon: const Icon(Icons.edit),
          ),
          IconButton(
            onPressed: () {
              deleteTask(index);
            },
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
