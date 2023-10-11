import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  late String taskname;
  final Function addtaskscreencallback;
  AddTaskScreen({required this.addtaskscreencallback});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Add new Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                cursorColor: Colors.lightBlueAccent,
                onChanged: (newValue) {
                  taskname = newValue;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.lightBlueAccent),
                ),
                onPressed: () {
                  addtaskscreencallback(taskname);
                },
                child: const Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
