class Task {
  String taskname;
  bool isDone;

  Task({required this.taskname, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
