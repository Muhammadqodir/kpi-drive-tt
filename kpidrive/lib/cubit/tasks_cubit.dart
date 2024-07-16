import 'package:bloc/bloc.dart';
import 'package:kpidrive/models/taks.dart';

part 'tasks_state.dart';

class TasksCubit extends Cubit<TasksState> {
  TasksCubit() : super(TasksState());
}
