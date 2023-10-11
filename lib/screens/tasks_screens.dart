import 'package:flutter/material.dart';
import 'package:todoey/Models/task_data.dart';
import 'package:todoey/Widgets/tasks_list.dart';
import 'package:todoey/screens/add_task_screen.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<TaskData>(
        builder: (context, TaskData, child) {
          return Scaffold(
            backgroundColor: Colors.lightBlueAccent,
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => AddTaskScreen(
                    addtaskscreencallback: (taskname) {
                      TaskData.addTask(taskname);
                      Navigator.pop(context);
                    },
                  ),
                );
              },
              backgroundColor: Colors.lightBlueAccent,
              child: const Icon(Icons.add),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40,
                        child: Icon(
                          Icons.list,
                          size: 45,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Todoey',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${TaskData.tasklength} tasks',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: TasksList()),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
