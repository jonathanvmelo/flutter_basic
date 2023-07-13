class TaskModel {
  String text;
  bool isChecked;

  TaskModel(this.text, this.isChecked);

  @override
  String toString() {
    return 'Task{text: $text, isChecked: $isChecked}';
  }
}