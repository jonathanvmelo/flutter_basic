class TaskModel {
  String text;
  bool done = false;

  TaskModel({ required this.text});

  @override
  String toString() {
    return 'TaskModel{text: $text}';
  }
}