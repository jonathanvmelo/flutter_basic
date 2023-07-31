// ignore_for_file: public_member_api_docs, sort_constructors_first
class TaskModel {
  String description;
  bool isDone;
  Function(bool?)? onChange;
  TaskModel({required this.description, required this.isDone, this.onChange});
}
