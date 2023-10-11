import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData with ChangeNotifier {
  List<Task> _tasks = [
    Task(taskname: '10% done', isDone: true),
    Task(taskname: '70% done', isDone: true),
    Task(taskname: 'Finish this app successfully..', isDone: true),
  ];

  int get tasklength => _tasks.length;

  UnmodifiableListView get tasks => UnmodifiableListView(_tasks);

  void addTask(String taskn) {
    _tasks.add(Task(taskname: taskn));
    notifyListeners();
  }

  void UpdateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deletetask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
