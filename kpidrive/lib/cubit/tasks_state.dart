part of 'tasks_cubit.dart';

class TasksState {
  List<Task> taskList = [];
  bool isLoading;

  TasksState({this.isLoading = true, this.taskList = const []});
}
