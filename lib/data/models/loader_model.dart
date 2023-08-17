/// The `LoaderModel` class represents a loader with an ID, message, visibility status, and index.
class LoaderModel {
  String id;
  String message;
  bool visible;
  int index;
  LoaderModel({
    required this.id,
    required this.message,
    this.visible = false,
    required this.index,
  });

  factory LoaderModel.clone(LoaderModel loader) => LoaderModel(
        id: loader.id,
        message: loader.message,
        visible: loader.visible,
        index: loader.index,
      );

  LoaderModel copyWith({
    String? id,
    String? message,
    bool? visible,
    int? index,
    DateTime? startTime,
    Duration? minDuration,
  }) {
    return LoaderModel(
      id: id ?? this.id,
      message: message ?? this.message,
      visible: visible ?? this.visible,
      index: index ?? this.index,
    );
  }

  @override
  String toString() {
    return 'LoaderModel(id: $id, message: $message, visible: $visible, index: $index)';
  }

  @override
  bool operator ==(covariant LoaderModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.message == message &&
        other.visible == visible &&
        other.index == index;
  }

  @override
  int get hashCode {
    return id.hashCode ^ message.hashCode ^ visible.hashCode ^ index.hashCode;
  }
}
