import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;

  const TodoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: EdgeInsets.all(18),
        child: Row(
          children: [
            // the checkbox
            Checkbox(value: taskCompleted, onChanged: onChanged),

            // the task name
            Text(taskName),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.deepPurple[200],
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
