import '../../../utils/result/result.dart';
import '../../../domain/modes/todo.dart';
import 'todos_repository.dart';

class TodosRepositoryDev implements TodosRepository {
  final List<Todo> _todos = [];

  @override
  Future<Result<Todo>> add(String name) async {
    final lastTodoIndex = _todos.length;

    final Todo createdTodo = Todo(
      id: (lastTodoIndex + 1).toString(),
      name: name,
    );

    return Result.ok(createdTodo);
  }

  @override
  Future<Result<void>> delete(Todo todo) async {
    if (_todos.contains(todo)) {
      _todos.remove(todo);
    }

    return Result.ok(null);
  }

  @override
  Future<Result<List<Todo>>> get() async {
    return Result.ok(_todos);
  }
}
