import 'package:flutter/material.dart';

import '../result/result.dart';

// Command 0 nao possui parametros de entrada
typedef CommandAction0<Output extends Object> = Future<Result<Output>> Function();

// Command 1 possui parametros de entrada
typedef CommandAction1<Output extends Object, Input extends Object> = Future<Result<Output>>
    Function(Input);

abstract class Command<Output extends Object> extends ChangeNotifier {
  // Verifica se o command esta em execucao
  bool _running = false;

  bool get running => _running;

  // Represnetacao do nosso estado => //$Ok ou Error ou Null
  Result<Output>? _result;

  Result<Output>? get result => _result;

  // Verfica se o nosso estado foi gerado com sucesso
  bool get completed => _result is Ok<Output>;

  // Verfica se o nosso estado eh de erro
  bool get error => _result is Error;

  Future<void> _execute(CommandAction0<Output> action) async {
    //# Inpede com que a Action seja reexecutada mais de uma vez simultaneamento
    if (_running) return;

    _running = true; //$ Action em execucao
    _result = null; //% Result voltou para null

    notifyListeners();

    try {
      _result = await action();
    } finally {
      _running = false;
      notifyListeners();
    }
  }
}

class Command0<Output extends Object> extends Command<Output> {
  final CommandAction0<Output> action;

  Command0(this.action);

  Future<void> execute() async {
    await _execute(() => action());
  }
}

class Command1<Output extends Object, Input extends Object> extends Command<Output> {
  final CommandAction1<Output, Input> action;

  Command1(this.action);

  Future<void> execute(Input params) async {
    await _execute(() => action(params));
  }
}