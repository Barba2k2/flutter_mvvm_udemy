import 'package:flutter/material.dart';

import '../../../domain/modes/todo.dart';

class TodoTile extends StatelessWidget {
  final Todo todo;

  const TodoTile({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text('${todo.id}'),
      title: Text(todo.name),
    );
  }
}
