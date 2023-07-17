import 'package:flutter/material.dart';
import 'package:flutter_project/exercises/exe08/task_model.dart';

class Exe08 extends StatefulWidget {
  @override
  State<Exe08> createState() => _Exe08State();
}

class _Exe08State extends State<Exe08> {
  TextEditingController _controller = TextEditingController();

  List<TaskModel> _tasks = [];

  void deleteTask(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Deseja realmente deletar a tarefa?"),
          content: TextFormField(
            initialValue: _tasks[index].text,
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.teal)) ,
              child: Text("Cancelar"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _tasks.removeAt(index);
                });
                Navigator.pop(context);
              },
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.teal)) ,
              child: Text("Deletar"),
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
          title: Text(
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
              child: Text("Cancelar"),
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.teal)),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _tasks[index].text = tempText;
                });
                Navigator.pop(context);
              },
              child: Text("Salvar"),
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.teal)),
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
        title: Text("Exercício 8"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),


          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
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
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Task"),
                ),
                controller: _controller,
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
          FloatingActionButton(
            onPressed: () {
              if (_controller.text.length > 0) {
                setState(() {
                  _tasks.add(TaskModel(_controller.text, false));
                });
                _controller.clear();
              }
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            height: 5,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _tasks = [];
              });
              _controller.clear();
            },
            child: Icon(
              Icons.delete,
            ),
            tooltip: "Delete toda a lista ",
          ),
        ],
      ),
    );
  }

  Widget builderList(TaskModel model, index) {
    TextStyle? txStyle = null;

    if (model.isChecked) {
      txStyle = TextStyle(
        color: Colors.grey,
        decoration: TextDecoration.lineThrough,
      );
    }

    return ListTile(
      leading: Checkbox(
        value: model.isChecked,
        onChanged: (value) {
          setState(() {
            _tasks[index].isChecked = (value ?? false);
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
            icon: Icon(Icons.edit),
          ),
          IconButton(
            onPressed: () {
              deleteTask(index);
            },
            icon: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
