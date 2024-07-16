import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kpidrive/cubit/tasks_cubit.dart';
import 'package:kpidrive/pages/main_page.dart';
import 'package:kpidrive/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksCubit(),
      child: MaterialApp(
        title: 'KPI DRIVE',
        debugShowCheckedModeBanner: false,
        theme: darkTheme,
        home: const MainPage(),
      ),
    );
  }
}
