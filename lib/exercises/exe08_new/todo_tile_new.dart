import 'package:devs2blu_refactor/exercises/exe08/task_model.dart';
import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  VoidCallback onPressed;
  TodoTile({super.key, required this.taskModel, required this.onPressed});

  TaskModel taskModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xFF1c2b37),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Checkbox(
            value: taskModel.isDone,
            onChanged: taskModel.onChange,
            checkColor: Color(0xfffefefe)),
        title: Text(
          taskModel.description,
          style: TextStyle(
              fontSize: 18,
              color: taskModel.isDone ? Colors.white54 : Color(0xfffefefe),
              decoration: taskModel.isDone
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.delete,
            color: Color(0xfffefefe),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
