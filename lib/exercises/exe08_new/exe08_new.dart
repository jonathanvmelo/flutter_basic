import 'package:devs2blu_refactor/exercises/exe08/task_model.dart';
import 'package:devs2blu_refactor/exercises/exe08/todo_tile.dart';
import 'package:devs2blu_refactor/widgets/custom_app_bar_sliver.dart';
import 'package:flutter/material.dart';

class Exe08 extends StatefulWidget {
  const Exe08({super.key});

  @override
  State<Exe08> createState() => _Exe08State();
}

class _Exe08State extends State<Exe08> {
  List<TaskModel> _tasks = [];
  TextEditingController _controller = TextEditingController();

  setIsDone(bool value, int index) {
    setState(() {
      _tasks[index].isDone = !_tasks[index].isDone;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
          CustomAppBarSliver(
              flexibleSpace: const FlexibleSpaceBar(
            title: Text('Exercício 8'),
            centerTitle: true,
            background: Padding(
              padding: EdgeInsets.only(top: 90, left: 50, right: 40),
              child: Text(
                'Vamos criar uma lista de tarefas. Essa lista deve possuir as seguintes características: \n- A lista precisa ser cadastravel pelo usuário. \n- Cada item deve ser exibido com um check, para que seja marcado como concluído',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ))
        ],
        body: ListView.builder(
            itemCount: _tasks.length,
            itemBuilder: (context, index) => TodoTile(
                  taskModel: TaskModel(
                    description: _tasks[index].description,
                    isDone: _tasks[index].isDone,
                    onChange: (value) {
                      setIsDone(mounted, index);
                    },
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        duration: Duration(seconds: 7),
                        action: SnackBarAction(
                          label: 'Excluir',
                          onPressed: () {
                            setState(() {
                              _tasks.removeAt(index);
                            });
                          },
                        ),
                        content: Text("Deseja Excluir ?")));
                  },
                )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              actions: [
                TextField(
                  autofocus: true,
                  controller: _controller,
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        _tasks.add(TaskModel(
                            description: _controller.text, isDone: false));
                      });

                      _controller.clear();
                      Navigator.of(context).pop();
                    },
                    child: Text('Cadastrar'))
              ],
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


// ListTile(
//             leading: Checkbox(
//               value: _tasks[index].isDone,
//               onChanged: (pO) {},
//             ),
//             title: _tasks[index].isDone
//                 ? Text(
//                     _tasks[index].description,
//                     style: TextStyle(
//                         color: Colors.black38,
//                         decoration: TextDecoration.lineThrough),
//                   )
//                 : Text(_tasks[index].description),
//             trailing: IconButton(
//                 onPressed: () {
//                   showDialog(
//                     context: context,
//                     builder: (context) => AlertDialog(
//                       title: Text('Deseja excluir a tarefa?'),
//                       actions: [
//                         TextButton(
//                             onPressed: () {
//                               setState(() {
//                                 _tasks.removeAt(index);
//                               });
//                               Navigator.of(context).pop();
//                             },
//                             child: Text('Excluir'))
//                       ],
//                     ),
//                   );
//                 },
//                 icon: Icon(Icons.delete)),
//           ),