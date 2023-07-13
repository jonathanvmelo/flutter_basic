import 'package:flutter/material.dart';
import 'package:flutter_project/exe08/task_model.dart';

class Exe08 extends StatefulWidget {
  @override
  State<Exe08> createState() => _Exe08State();
}

class _Exe08State extends State<Exe08> {
  TextEditingController _controller = TextEditingController();

  List<TaskModel> _tasks = [];

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
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Task"),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                ),
                controller: _controller,
              ),
            ),
            Container(
              height: 300,
              child: ListView.builder(
                itemCount: _tasks.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    value: _tasks[index].isChecked,
                    title: Text(_tasks[index].text),
                    onChanged: (value) {
                      setState(() {
                        _tasks[index].isChecked = value!;
                      });
                    },
                  );
                },
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
}


