import 'package:flutter/material.dart';
import 'package:flutter_project/exercises/exe08/task_model.dart';

class Exe08 extends StatefulWidget {
  const Exe08({Key? key}) : super(key: key);

  @override
  State<Exe08> createState() => _Exe08State();
}

class _Exe08State extends State<Exe08> {
  bool isDone = false;
  final keyForm = GlobalKey<FormState>();
  TextEditingController _textEditing = TextEditingController();

  List<TaskModel> _taskList = [];

  Widget? _buildListTile(TaskModel task, int index) {
    TextStyle? textStyle;
    if(task.done){
      textStyle = TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough);
    }
    return ListTile(
      leading: Checkbox(
        value: task.done,
        onChanged: (value) {
          setState(() {
            _taskList[index].done = value ?? false;
          });
        },
      ),
      title: Text(task.text, style: textStyle,),
      trailing: IconButton(onPressed: () {
          setState(() {
            _taskList.removeAt(index);
          });
      },  icon: Icon(Icons.delete)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 8 - Lista de Tarefas"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            TextFormField(
              controller: _textEditing,
              validator: (value) {
                if (value!.trim().isEmpty) "Campo obrigatório";
              },
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    if(keyForm.currentState!.validate()){
                      setState(() {
                        _taskList.add(TaskModel(text: _textEditing.text));
                      });
                    }
                    _textEditing.clear();
                  },
                  icon: Icon(Icons.add),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(itemCount: _taskList.length,
                  itemBuilder: (context, index) => _buildListTile(_taskList[index], index),
            )
            )
          ],
        ),
      ),
    );
  }
}
