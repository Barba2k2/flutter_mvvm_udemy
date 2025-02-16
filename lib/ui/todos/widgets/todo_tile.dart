import 'package:flutter/material.dart';

import '../../../utils/typedefs/todos.dart';
import '../../../domain/modes/todo.dart';
import '../viewmodels/todo_viewmodel.dart';

class TodoTile extends StatelessWidget {
  final Todo todo;
  final TodoViewmodel todoViewmodel;
  final OnDeleteTodo onDeleteTodo;

  const TodoTile({
    super.key,
    required this.todo,
    required this.todoViewmodel,
    required this.onDeleteTodo,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text('${todo.id}'),
      title: Text(todo.name),
      trailing: IconButton(
        onPressed: () {
          todoViewmodel.deleteTodo.execute(todo);
        },
        icon: Icon(
          Icons.delete_rounded,
          color: Colors.red,
        ),
      ),
    );
  }
}
