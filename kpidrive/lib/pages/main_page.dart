import 'package:appflowy_board/appflowy_board.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    bool isLoading = context.watch<TasksCubit>().state.isLoading;
    return Scaffold(
      appBar: AppBar(
        title: const Text("KPI DRIVE"),
        actions: [
          IconButton(
            onPressed: () {
              context.read<TasksCubit>().updateData();
            },
            icon: const Icon(
              Icons.refresh,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : AppFlowyBoard(
                groupConstraints: const BoxConstraints(maxWidth: 300),
                controller: context.read<TasksCubit>().controller,
                headerBuilder: (context, groupData) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 18,
                    ),
                    height: 60,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      groupData.headerData.groupName,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  );
                },
                cardBuilder: (context, groupData, item) {
                  if (item is TextItem) {
                    return AppFlowyGroupCard(
                      key: ObjectKey(item.id),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color(0xFF28282A),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(0, 1),
                          )
                        ],
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(item.s),
                        ),
                      ),
                    );
                  }
                  throw UnimplementedError();
                },
              ),
      ),
    );
  }
}
