import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) CheckBoxCallback;
  final VoidCallback DeleteCallback;

  TasksTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.CheckBoxCallback,
      required this.DeleteCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: DeleteCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        tristate: false,
        onChanged: CheckBoxCallback,
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        checkColor: Colors.white,
      ),
    );
  }
}
