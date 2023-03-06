import 'package:flutter/material.dart';

class TaskType extends StatelessWidget {
  final VoidCallback onTaskTapped;
  final String task;
  const TaskType({super.key, required this.onTaskTapped, required this.task});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: GestureDetector(
        onTap: onTaskTapped,
        child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(task),
            )),
      ),
    );
  }
}
