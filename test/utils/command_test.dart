import 'package:flutter_mvvm_udemy/utils/commands/commands.dart';
import 'package:flutter_mvvm_udemy/utils/result/result.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Should test Commands ', () {
    test('Should test Command0 retunrs Ok', () async {
      final command0 = Command0<String>(getOkResult);

      expect(command0.completed, false);

      expect(command0.running, false);

      expect(command0.error, false);

      expect(command0.result, isNull);

      await command0.execute();

      expect(command0.error, false);

      expect(command0.running, false);

      expect(command0.result, isNotNull);

      expect(command0.result!.asOk.value, 'This operation has Success');
    });

    test('Should test Command0 retunrs Error', () async {
      final command0 = Command0<bool>(getErrorResult);

      expect(command0.completed, false);

      expect(command0.running, false);

      expect(command0.error, false);

      expect(command0.result, isNull);

      await command0.execute();

      expect(command0.error, true);

      expect(command0.running, false);

      expect(command0.result, isNotNull);

      expect(command0.result!.asError.error, isA<Exception>());
    });

    test('Should test Command1 Ok Result', () async {
      final command1 = Command1<String, String>(getOkResult1);

      expect(command1.running, false);

      expect(command1.error, false);

      expect(command1.completed, false);

      expect(command1.result, isNull);

      await command1.execute("Paramentro de entrada");

      expect(command1.running, false);

      expect(command1.error, false);

      expect(command1.completed, true);

      expect(command1.result, isA<Ok>());

      expect(command1.result!.asOk.value, "Paramentro de entrada");
    });

    test('Should test Command1 Error Result', () async {
      final command1 = Command1<bool, String>(getErrorResult1);

      expect(command1.running, false);

      expect(command1.error, false);

      expect(command1.completed, false);

      expect(command1.result, isNull);

      await command1.execute("Paramentro de entrada");

      expect(command1.running, false);

      expect(command1.error, true);

      expect(command1.completed, false);

      expect(command1.result, isA<Error>());
    });
  });
}

Future<Result<String>> getOkResult() async {
  await Future.delayed(const Duration(milliseconds: 500));
  return Result.ok('This operation has Success');
}

Future<Result<bool>> getErrorResult() async {
  await Future.delayed(const Duration(milliseconds: 500));
  return Result.error(Exception('Ocorreu um erro ao gerar estado.'));
}

Future<Result<String>> getOkResult1(String params) async {
  await Future.delayed(const Duration(milliseconds: 500));
  return Result.ok(params);
}

Future<Result<bool>> getErrorResult1(String params) async {
  await Future.delayed(const Duration(milliseconds: 500));
  return Result.error(
    Exception('Ocorreu um erro ao gerar estado with params: $params'),
  );
}
