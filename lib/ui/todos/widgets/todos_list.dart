import 'package:flutter/material.dart';

import '../../../core/typedefs/todos.dart';
import '../../../domain/modes/todo.dart';
import '../viewmodels/todo_viewmodel.dart';
import 'todo_tile.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;
  final TodoViewmodel todoViewmodel;
  final OnDeleteTodo onDeleteTodo;

  const TodoList({
    super.key,
    required this.todos,
    required this.todoViewmodel,
    required this.onDeleteTodo,
  });

  @override
  Widget build(BuildContext context) {
    if (todos.isEmpty) {
      return const Center(
        child: Text('Nenhum tarefa por enquanto...'),
      );
    }

    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        return TodoTile(
          onDeleteTodo: onDeleteTodo,
          todo: todos[index],
          todoViewmodel: todoViewmodel,
        );
      },
    );
  }
}
