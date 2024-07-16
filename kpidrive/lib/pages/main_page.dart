import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/custom/board.dart';
import 'package:kanban_board/models/inputs.dart';
import 'package:kpidrive/cubit/tasks_cubit.dart';
import 'package:kpidrive/models/taks.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<TasksCubit>().updateData();
  }

  @override
  Widget build(BuildContext context) {
    Map<String, List<Task>> data = context.watch<TasksCubit>().getKanbanData();
    bool isLoading = context.watch<TasksCubit>().state.isLoading;
    return Scaffold(
      appBar: AppBar(
        title: const Text("KPI DRIVE"),
      ),
      body: SafeArea(
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : KanbanBoard(
                data.keys
                    .map(
                      (title) => BoardListsData(
                        header: Text("test"),
                        items: data[title]!
                            .map(
                              (e) => Container(
                                padding: const EdgeInsets.all(6),
                                child: Text(e.name ?? "undefined"),
                              ),
                            )
                            .toList(),
                      ),
                    )
                    .toList(),
              ),
      ),
    );
  }
}
