import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference tasks = FirebaseFirestore.instance.collection('tasks');

  Future<void> addTask(String task) {
    return tasks.add({'task': task});
  }

  Future<void> updateTask(String docId, String newTask) {
    return tasks.doc(docId).update({'task': newTask});
  }

  Future<void> deleteTask(String docId) {
    return tasks.doc(docId).delete();
  }

  Stream<QuerySnapshot> getTasks() {
    return tasks.snapshots();
  }
}
