import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:kpidrive/api/api.dart';
import 'package:kpidrive/models/taks.dart';

part 'tasks_state.dart';

class TasksCubit extends Cubit<TasksState> {
  TasksCubit() : super(TasksState());

  Future<void> updateData() async {
    emit(state.copyWith(isLoading: true));
    Api api = Api(token: "48ab34464a5573519725deb5865cc74c");
    try {
      emit(
        state.copyWith(
          isLoading: false,
          taskList: await api.getTasks(),
        ),
      );
    } catch (e, s) {
      print("ApiError: " + e.toString());
    }
  }

  Map<String, List<Task>> getKanbanData() {
    Map<String, List<Task>> res = {};
    for (var element in state.taskList) {
      String parentName = element.parentName ?? "undefined";
      if (res.containsKey(parentName)) {
        res[parentName]!.add(element);
      } else {
        res[parentName] = [element];
      }
    }
    return res;
  }
}
