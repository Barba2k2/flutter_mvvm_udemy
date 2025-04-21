import '../../../domain/modes/todo.dart';
import '../../../utils/result/result.dart';
import '../../services/api/api_client.dart';
import '../../services/api/models/todo/todo_api_model.dart';
import 'todos_repository.dart';

class TodosRepositoryRemote implements TodosRepository {
  final ApiClient _apiClient;

  const TodosRepositoryRemote({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  @override
  Future<Result<Todo>> add(String name) async {
    try {
      final result = await _apiClient.postTodo(
        CreateTodoApiModel(name: name),
      );

      switch (result) {
        case Ok<Todo>():
          return Result.ok(result.value);
        default:
          return result;
      }
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<void>> delete(Todo todo) async {
    try {
      final result = await _apiClient.deleteTodo(todo);

      switch (result) {
        case Ok<void>():
          return Result.ok(null);
        default:
          return result;
      }
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<List<Todo>>> get() async {
    try {
      final result = await _apiClient.getTodos();

      switch (result) {
        case Ok<List<Todo>>():
          return Result.ok(result.value);
        default:
          return result;
      }
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
