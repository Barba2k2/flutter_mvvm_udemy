import 'package:flutter/material.dart';

import '../viewmodels/todo_viewmodel.dart';
import 'add_todo_widget.dart';
import 'todos_list.dart';

class TodoScreen extends StatelessWidget {
  final TodoViewmodel todoViewmodel;

  const TodoScreen({
    super.key,
    required this.todoViewmodel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos Screen'),
      ),
      body: ListenableBuilder(
        listenable: todoViewmodel.load,
        builder: (context, child) {
          if (todoViewmodel.load.running) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
          if (todoViewmodel.load.error) {
            return const Center(
              child: Text('Ocorreu um erro ao carregar Todos...'),
            );
          }
          return child!;
        },
        child: ListenableBuilder(
          listenable: todoViewmodel,
          builder: (context, child) {
            return TodoList(todos: todoViewmodel.todos);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AddTodoWidget(
                todoViewmodel: todoViewmodel,
              );
            },
          );
        },
        child: Icon(Icons.add_rounded),
      ),
    );
  }
}
