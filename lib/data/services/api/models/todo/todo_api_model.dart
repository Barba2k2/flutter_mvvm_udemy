import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_api_model.freezed.dart';
part 'todo_api_model.g.dart';

@freezed
abstract class TodoApiModel with _$TodoApiModel {
  const factory TodoApiModel.create({
    required String name,
  }) = CreateTodoApiModel;

  const factory TodoApiModel.update({
    required String id,
    required String name,
  }) = UpdateTodoApiModel;

  factory TodoApiModel.fromJson(Map<String, dynamic> json) =>
      _$TodoApiModelFromJson(json);
}
