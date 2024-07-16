import 'dart:developer';

import 'package:appflowy_board/appflowy_board.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:kpidrive/api/api.dart';
import 'package:kpidrive/models/taks.dart';

part 'tasks_state.dart';

class TasksCubit extends Cubit<TasksState> {
  TasksCubit() : super(TasksState());
  Api api = Api(token: "48ab34464a5573519725deb5865cc74c");

  final AppFlowyBoardController controller = AppFlowyBoardController(
    onMoveGroup: (fromGroupId, fromIndex, toGroupId, toIndex) {
      debugPrint('Move item from $fromIndex to $toIndex');
    },
    onMoveGroupItem: (groupId, fromIndex, toIndex) {
      debugPrint('Move $groupId:$fromIndex to $groupId:$toIndex');
    },
    onMoveGroupItemToGroup: (fromGroupId, fromIndex, toGroupId, toIndex) {
      debugPrint('Move $fromGroupId:$fromIndex to $toGroupId:$toIndex');
    },
  );

  Future<void> updateData() async {
    emit(state.copyWith(isLoading: true));
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
    for (var element in res.keys) {
      controller.addGroup(
        AppFlowyGroupData(
          id: element,
          name: element,
          items: res[element]!
              .map((item) =>
                  TextItem(item.name ?? "undefined") as AppFlowyGroupItem)
              .toList(),
        ),
      );
    }
    return res;
  }
}

class TextItem extends AppFlowyGroupItem {
  final String s;
  TextItem(this.s);

  @override
  String get id => s;
}
