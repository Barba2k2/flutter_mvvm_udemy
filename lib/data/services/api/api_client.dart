import 'dart:convert';
import 'dart:io';

import '../../../domain/modes/todo.dart';
import '../../../utils/result/result.dart';

class ApiClient {
  final String _host;
  final int _port;
  final HttpClient Function() _clientHttpFactory;

  ApiClient({
    String? host,
    int? port,
    HttpClient Function()? clientHttpFactory,
  })  : _host = host ?? 'localhost',
        _port = port ?? 3000,
        _clientHttpFactory = clientHttpFactory ?? HttpClient.new;

  Future<Result<List<Todo>>> getTodos() async {
    final client = _clientHttpFactory();

    try {
      final request = await client.get(_host, _port, '/todos');

      final response = await request.close();

      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();

        final json = jsonDecode(stringData) as List<dynamic>;

        final List<Todo> todos = json.map((e) => Todo.fromJson(e)).toList();

        return Result.ok(todos);
      } else {
        return Result.error(
          HttpException('Invalid response'),
        );
      }
    } on Exception catch (e) {
      return Result.error(e);
    } finally {
      client.close();
    }
  }

  Future<Result<Todo>> postTodo(Todo todo) async {
    final client = _clientHttpFactory();

    try {
      final request = await client.post(_host, _port, '/todos');

      request.write(
        jsonEncode(
          {
            'name': todo.name,
          },
        ),
      );

      final response = await request.close();

      if (response.statusCode == 201) {
        final stringData = await response.transform(utf8.decoder).join();

        final json = jsonDecode(stringData) as Map<String, dynamic>;

        final createdTodo = Todo.fromJson(json);

        return Result.ok(createdTodo);
      } else {
        return Result.error(
          HttpException('Invalid response'),
        );
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
