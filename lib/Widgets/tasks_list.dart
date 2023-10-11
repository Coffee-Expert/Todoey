import 'package:flutter/material.dart';
import 'package:todoey/Models/task_data.dart';
import 'package:todoey/Widgets/tasks_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TasksTile(
              DeleteCallback: () {
                taskData.deletetask(task);
              },
              isChecked: task.isDone,
              taskTitle: task.taskname,
              CheckBoxCallback: (bool? CheckBoxState) {
                taskData.UpdateTask(task);
              },
            );
          },
          itemCount: Provider.of<TaskData>(context).tasklength,
        );
      },
    );
  }
}
