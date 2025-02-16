import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'data/repositories/todos/todos_repository_dev.dart';
import 'ui/todos/viewmodels/todo_viewmodel.dart';
import 'ui/todos/widgets/todo_screen.dart';

void main() {
  debugPrintGestureArenaDiagnostics = false;
  debugPrintResamplingMargin = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        useMaterial3: false,
      ),
      home: TodoScreen(
        todoViewmodel: TodoViewmodel(
          todosRepository: TodosRepositoryDev(),
        ),
      ),
    );
  }
}
