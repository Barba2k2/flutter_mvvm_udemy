import 'package:flutter/material.dart';

import '../viewmodels/todo_viewmodel.dart';

class AddTodoWidget extends StatefulWidget {
  final TodoViewmodel todoViewmodel;

  const AddTodoWidget({
    super.key,
    required this.todoViewmodel,
  });

  @override
  State<AddTodoWidget> createState() => _AddTodoWidgetState();
}

class _AddTodoWidgetState extends State<AddTodoWidget> {
  final _formKey = GlobalKey<FormState>();
  final _nameEC = TextEditingController();
  final vGap = const SizedBox(
    height: 16,
  );

  @override
  void initState() {
    widget.todoViewmodel.addTodo.addListener(_onResult);
    super.initState();
  }

  void _onResult() {
    if (widget.todoViewmodel.addTodo.running) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            content: IntrinsicHeight(
              child: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          );
        },
      );
    } else {
      if (widget.todoViewmodel.addTodo.completed) {
        Navigator.of(context).pop();
        Navigator.of(context).pop();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Todo criado com sucesso'),
            backgroundColor: Colors.green,
          ),
        );
      }

      if (widget.todoViewmodel.addTodo.error) {
        Navigator.of(context).pop();
        Navigator.of(context).pop();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Ocorreu um erro ao gerar Todo'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    _nameEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      content: IntrinsicHeight(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                children: [
                  Text('Adicione novos todos:'),
                ],
              ),
              vGap,
              TextFormField(
                controller: _nameEC,
                decoration: InputDecoration(
                  hintText: 'Nome',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim() == "") {
                    return "Por favor, preencha o campo de nome";
                  }
                  return null;
                },
              ),
              vGap,
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() == true) {
                    widget.todoViewmodel.addTodo.execute(_nameEC.text.trim());
                  }
                },
                child: Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
