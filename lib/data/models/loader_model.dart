// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

/// The `LoaderModel` class represents a loader with an ID, message, visibility status, and index.
class LoaderModel {
  String id;
  String message;
  bool visible;
  String classSource;
  LoaderModel({
    required this.id,
    required this.message,
    this.visible = false,
    required this.classSource,
  });

  factory LoaderModel.clone(LoaderModel loader) => LoaderModel(
        id: loader.id,
        message: loader.message,
        classSource: loader.classSource,
        visible: loader.visible,
      );

  LoaderModel copyWith({
    String? id,
    String? message,
    bool? visible,
    String? classSource,
  }) {
    return LoaderModel(
      id: id ?? this.id,
      message: message ?? this.message,
      visible: visible ?? this.visible,
      classSource: classSource ?? this.classSource,
    );
  }

  @override
  String toString() {
    return 'LoaderModel(id: $id, message: $message, visible: $visible, classSource: $classSource)';
  }

  @override
  bool operator ==(covariant LoaderModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.message == message &&
        other.visible == visible &&
        other.classSource == classSource;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        message.hashCode ^
        visible.hashCode ^
        classSource.hashCode;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'message': message,
      'visible': visible,
      'classSource': classSource,
    };
  }

  factory LoaderModel.fromMap(Map<String, dynamic> map) {
    return LoaderModel(
      id: map['id'] as String,
      message: map['message'] as String,
      visible: map['visible'] as bool,
      classSource: map['classSource'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoaderModel.fromJson(String source) =>
      LoaderModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
