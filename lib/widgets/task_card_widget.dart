import 'package:flutter/material.dart';
import 'package:flutter_ui_class/models/task_model.dart';

class TaskCardWidget extends StatelessWidget {
  final Task task;
  final VoidCallback onDelete;

  const TaskCardWidget({super.key, required this.task, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: ListTile(
        title: Text(
          task.title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(task.description),
        leading: Icon(Icons.task),
        trailing: IconButton(onPressed: onDelete, icon: Icon(Icons.delete)),
      ),
    );
  }
}
