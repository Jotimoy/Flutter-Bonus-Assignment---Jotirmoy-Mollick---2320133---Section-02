import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_ui_class/models/task_model.dart';

class TaskRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String _collection = 'tasks';

  // Add a new task
  Future<void> addTask(Task task) async {
    await _firestore.collection(_collection).doc(task.id).set(task.toJson());
  }

  // Delete a task
  Future<void> deleteTask(String taskId) async {
    await _firestore.collection(_collection).doc(taskId).delete();
  }

  // Get stream of tasks for real-time updates
  Stream<List<Task>> getTasks() {
    return _firestore.collection(_collection).snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Task.fromJson(doc.data()..['id'] = doc.id);
      }).toList();
    });
  }
}
