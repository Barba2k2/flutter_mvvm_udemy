// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
TodoApiModel _$TodoApiModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'create':
      return CreateTodoApiModel.fromJson(json);
    case 'update':
      return UpdateTodoApiModel.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TodoApiModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TodoApiModel {
  String get name;

  /// Create a copy of TodoApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TodoApiModelCopyWith<TodoApiModel> get copyWith =>
      _$TodoApiModelCopyWithImpl<TodoApiModel>(
          this as TodoApiModel, _$identity);

  /// Serializes this TodoApiModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodoApiModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'TodoApiModel(name: $name)';
  }
}

/// @nodoc
abstract mixin class $TodoApiModelCopyWith<$Res> {
  factory $TodoApiModelCopyWith(
          TodoApiModel value, $Res Function(TodoApiModel) _then) =
      _$TodoApiModelCopyWithImpl;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$TodoApiModelCopyWithImpl<$Res> implements $TodoApiModelCopyWith<$Res> {
  _$TodoApiModelCopyWithImpl(this._self, this._then);

  final TodoApiModel _self;
  final $Res Function(TodoApiModel) _then;

  /// Create a copy of TodoApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class CreateTodoApiModel implements TodoApiModel {
  const CreateTodoApiModel({required this.name, final String? $type})
      : $type = $type ?? 'create';
  factory CreateTodoApiModel.fromJson(Map<String, dynamic> json) =>
      _$CreateTodoApiModelFromJson(json);

  @override
  final String name;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of TodoApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateTodoApiModelCopyWith<CreateTodoApiModel> get copyWith =>
      _$CreateTodoApiModelCopyWithImpl<CreateTodoApiModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateTodoApiModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateTodoApiModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'TodoApiModel.create(name: $name)';
  }
}

/// @nodoc
abstract mixin class $CreateTodoApiModelCopyWith<$Res>
    implements $TodoApiModelCopyWith<$Res> {
  factory $CreateTodoApiModelCopyWith(
          CreateTodoApiModel value, $Res Function(CreateTodoApiModel) _then) =
      _$CreateTodoApiModelCopyWithImpl;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CreateTodoApiModelCopyWithImpl<$Res>
    implements $CreateTodoApiModelCopyWith<$Res> {
  _$CreateTodoApiModelCopyWithImpl(this._self, this._then);

  final CreateTodoApiModel _self;
  final $Res Function(CreateTodoApiModel) _then;

  /// Create a copy of TodoApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
  }) {
    return _then(CreateTodoApiModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class UpdateTodoApiModel implements TodoApiModel {
  const UpdateTodoApiModel(
      {required this.id, required this.name, final String? $type})
      : $type = $type ?? 'update';
  factory UpdateTodoApiModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateTodoApiModelFromJson(json);

  final String id;
  @override
  final String name;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of TodoApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateTodoApiModelCopyWith<UpdateTodoApiModel> get copyWith =>
      _$UpdateTodoApiModelCopyWithImpl<UpdateTodoApiModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateTodoApiModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateTodoApiModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'TodoApiModel.update(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $UpdateTodoApiModelCopyWith<$Res>
    implements $TodoApiModelCopyWith<$Res> {
  factory $UpdateTodoApiModelCopyWith(
          UpdateTodoApiModel value, $Res Function(UpdateTodoApiModel) _then) =
      _$UpdateTodoApiModelCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$UpdateTodoApiModelCopyWithImpl<$Res>
    implements $UpdateTodoApiModelCopyWith<$Res> {
  _$UpdateTodoApiModelCopyWithImpl(this._self, this._then);

  final UpdateTodoApiModel _self;
  final $Res Function(UpdateTodoApiModel) _then;

  /// Create a copy of TodoApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(UpdateTodoApiModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
