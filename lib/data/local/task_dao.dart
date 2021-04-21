import 'task_database.dart';

class TaskDAO extends AppDatabase {
  TaskDAO() : super();

  Future<List<Task>> getAllTask() => select(tasks).get();
  Stream<List<Task>> watchAllTasks() => select(tasks).watch();
  Future insertTask(Task task) => into(tasks).insert(task);
  Future updateTask(Task task) => update(tasks).replace(task);
  Future deleteTask(Task task) => delete(tasks).delete(task);
}
