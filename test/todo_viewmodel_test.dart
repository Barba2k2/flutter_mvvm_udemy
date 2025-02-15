import 'package:flutter_mvvm_udemy/ui/todos/viewmodels/todo_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Should test TodoViewModel', () {
    test('Verifying ViewModel initial state', () {
      final TodoViewmodel todoViewmodel = TodoViewmodel();

      expect(todoViewmodel.todos, isEmpty);
    });

    test('Should add Todo', () async {
      final TodoViewmodel todoViewmodel = TodoViewmodel();

      expect(todoViewmodel.todos, isEmpty);

      await todoViewmodel.addTodo.execute('Novo todo');

      expect(todoViewmodel.todos, isNotEmpty);

      expect(todoViewmodel.todos.first.name, contains('Novo todo'));

      expect(todoViewmodel.todos.first.id, isNotNull);
    });

    test("Shoud remove todo", () async {
      final TodoViewmodel todoViewmodel = TodoViewmodel();

      expect(todoViewmodel.todos, isEmpty);

      await todoViewmodel.addTodo.execute('Novo todo');

      expect(todoViewmodel.todos, isNotEmpty);

      expect(todoViewmodel.todos.first.name, contains('Novo todo'));

      expect(todoViewmodel.todos.first.id, isNotNull);

      await todoViewmodel.deleteTodo.execute(todoViewmodel.todos.first);

      expect(todoViewmodel.todos, isEmpty);
    });
  });
}
