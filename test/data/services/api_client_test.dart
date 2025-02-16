import 'package:flutter_mvvm_udemy/data/services/api/api_client.dart';
import 'package:flutter_mvvm_udemy/domain/modes/todo.dart';
import 'package:flutter_mvvm_udemy/utils/result/result.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late ApiClient apiClient;

  setUp(() {
    apiClient = ApiClient();
  });

  group('Should test [ApiClient]', () {
    test('Should return Result Ok when getTodos()', () async {
      final result = await apiClient.getTodos();

      expect(result.asOk.value, isA<List<Todo>>());
    });

    test("Should return a Todo when creating postTodo()", () async {
      final Todo todoToCreate = Todo(name: 'Todo created on Test');

      final result = await apiClient.postTodo(todoToCreate);

      expect(result.asOk.value, isA<Todo>());
    });

    test("Should delete a Todo when deleteTodo()", () async {
      final Todo todoToCreate = Todo(name: 'Todo created on Test - 2');

      final createTodoResult = await apiClient.postTodo(todoToCreate);

      final result = await apiClient.deleteTodo(createTodoResult.asOk.value);

      expect(result, isA<Result<void>>());
    });
  });
}
