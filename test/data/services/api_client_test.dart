import 'package:flutter_mvvm_udemy/data/services/api_client.dart';
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
  });
}
