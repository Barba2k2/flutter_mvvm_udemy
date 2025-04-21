import 'package:flutter_mvvm_udemy/data/services/api/models/todo/todo_api_model.dart';

void main() {
  const TodoApiModel todoApiModel = TodoApiModel.create(name: 'Teste');
  print(todoApiModel.toJson());

  const todoCreate = CreateTodoApiModel(name: 'Teste');
  print(todoCreate.toJson());

  const todoUpdate = UpdateTodoApiModel(
    id: 'teste',
    name: 'Updated Name',
  );
  print(todoUpdate.toJson());
}
