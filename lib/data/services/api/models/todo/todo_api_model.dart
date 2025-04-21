import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_api_model.freezed.dart';
part 'todo_api_model.g.dart';

@freezed
class TodoApiModel with _$TodoApiModel {
  const factory TodoApiModel.create({
    required String name,
  }) = CreateTodoApiModel;

  factory TodoApiModel.fromJson(Map<String, dynamic> json) =>
      _$TodoApiModelFromJson(json);

  @override
  // TODO: implement name
  String get name => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
