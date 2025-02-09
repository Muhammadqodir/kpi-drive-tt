import 'dart:developer';

import 'package:appflowy_board/appflowy_board.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kpidrive/api/api.dart';
import 'package:kpidrive/models/taks.dart';

part 'tasks_state.dart';

class TasksCubit extends Cubit<TasksState> {
  Api api = Api(token: "48ab34464a5573519725deb5865cc74c");
  late AppFlowyBoardController controller;

  TasksCubit() : super(TasksState()) {
    controller = AppFlowyBoardController(
      onMoveGroupItem: (
        groupId,
        fromIndex,
        toIndex,
      ) async {
        emit(state.copyWith(absorbing: true));
        try {
          int itemId = kanbanData[groupId]![fromIndex].indicatorToMoId ?? -1;
          await api.updateField(
            indicatorToMoId: itemId,
            fieldName: "order",
            fieldValue: toIndex + 1,
          );
          await updateData(showLoading: false);
        } catch (e) {
          Fluttertoast.showToast(msg: e.toString());
        }
        emit(state.copyWith(absorbing: false));
      },
      onMoveGroupItemToGroup: (
        fromGroupId,
        fromIndex,
        toGroupId,
        toIndex,
      ) async {
        emit(state.copyWith(absorbing: true));
        try {
          int itemId =
              kanbanData[fromGroupId]![fromIndex].indicatorToMoId ?? -1;
          await api.updateField(
            indicatorToMoId: itemId,
            fieldName: "parent_id",
            fieldValue: toGroupId,
          );
          await api.updateField(
            indicatorToMoId: itemId,
            fieldName: "order",
            fieldValue: toIndex + 1,
          );
          await updateData(showLoading: false);
        } catch (e) {
          Fluttertoast.showToast(msg: e.toString());
        }
        emit(state.copyWith(absorbing: false));
      },
    );
  }

  Future<void> updateData({
    bool showLoading = true,
  }) async {
    if (showLoading) emit(state.copyWith(isLoading: true));
    try {
      emit(
        state.copyWith(
          isLoading: false,
          taskList: await api.getTasks(),
        ),
      );
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
    updateKanbanData();
  }

  Map<String, List<Task>> kanbanData = {};
  void updateKanbanData() {
    kanbanData = {};
    for (var element in state.taskList) {
      String parentId = (element.parentId ?? -1).toString();
      if (kanbanData.containsKey(parentId)) {
        kanbanData[parentId]!.add(element);
      } else {
        kanbanData[parentId] = [element];
      }
    }
    controller.clear();
    for (var element in kanbanData.keys.toList()..sort()) {
      controller.addGroup(
        AppFlowyGroupData(
          id: element,
          name: kanbanData[element]![0].parentName ?? "",
          items: kanbanData[element]!
              .map((item) =>
                  TextItem(item.name ?? "undefined") as AppFlowyGroupItem)
              .toList(),
        ),
      );
    }
  }
}

class TextItem extends AppFlowyGroupItem {
  final String s;
  TextItem(this.s);

  @override
  String get id => s;
}
