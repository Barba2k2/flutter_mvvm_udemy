import 'package:flutter_mvvm_udemy/core/result/result.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Should test Ok Result', () {
    test('Should create a Ok Result', () {
      final result = Result.ok("Ok");

      expect((result as Ok).value, 'Ok');
    });

    test("Should create a Error Result", () {
      final result = Result.error(Exception('Ocorreu um erro...'));

      expect((result as Error).error, isA<Exception>());
    });

    test('Should create a Ok Result with Extension', () {
      final result = "Ok".ok();

      expect(result.asOk.value, 'Ok');
    });

    test('Should create a Error Result with Extension', () {
      final result = Exception('Ocorreu um erro...').error();

      expect(result.asError.error, isA<Exception>());
    });
  });
}
