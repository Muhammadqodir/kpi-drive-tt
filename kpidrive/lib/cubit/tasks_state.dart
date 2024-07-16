// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'tasks_cubit.dart';

class TasksState {
  List<Task> taskList = [];
  bool isLoading;
  bool absorbing;

  TasksState({
    this.isLoading = true,
    this.taskList = const [],
    this.absorbing = false,
  });

  TasksState copyWith({
    List<Task>? taskList,
    bool? isLoading,
    bool? absorbing,
  }) {
    return TasksState(
      taskList: taskList ?? this.taskList,
      isLoading: isLoading ?? this.isLoading,
      absorbing: absorbing ?? this.absorbing,
    );
  }
}
