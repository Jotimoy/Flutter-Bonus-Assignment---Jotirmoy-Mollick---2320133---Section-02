import 'package:flutter/material.dart';
import 'package:flutter_ui_class/models/task_model.dart';
import 'package:flutter_ui_class/repositories/task_repository.dart';

class TaskManagementProvider with ChangeNotifier {
  final TaskRepository _taskRepository = TaskRepository();

  Stream<List<Task>> get tasksStream => _taskRepository.getTasks();

  Future<void> addTask(String title, String description) async {
    final task = Task(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: title,
      description: description,
      createdAt: DateTime.now(),
    );
    await _taskRepository.addTask(task);
    notifyListeners();
  }

  Future<void> deleteTask(String taskId) async {
    await _taskRepository.deleteTask(taskId);
    notifyListeners();
  }
}
