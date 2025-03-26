// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MoodTableStruct extends BaseStruct {
  MoodTableStruct({
    int? id,
    int? iconId,
    String? description,
    DateTime? createdAt,
  })  : _id = id,
        _iconId = iconId,
        _description = description,
        _createdAt = createdAt;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "icon_id" field.
  int? _iconId;
  int get iconId => _iconId ?? 0;
  set iconId(int? val) => _iconId = val;

  void incrementIconId(int amount) => iconId = iconId + amount;

  bool hasIconId() => _iconId != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static MoodTableStruct fromMap(Map<String, dynamic> data) => MoodTableStruct(
        id: castToType<int>(data['id']),
        iconId: castToType<int>(data['icon_id']),
        description: data['description'] as String?,
        createdAt: data['created_at'] as DateTime?,
      );

  static MoodTableStruct? maybeFromMap(dynamic data) => data is Map
      ? MoodTableStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'icon_id': _iconId,
        'description': _description,
        'created_at': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'icon_id': serializeParam(
          _iconId,
          ParamType.int,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static MoodTableStruct fromSerializableMap(Map<String, dynamic> data) =>
      MoodTableStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        iconId: deserializeParam(
          data['icon_id'],
          ParamType.int,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'MoodTableStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MoodTableStruct &&
        id == other.id &&
        iconId == other.iconId &&
        description == other.description &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, iconId, description, createdAt]);
}

MoodTableStruct createMoodTableStruct({
  int? id,
  int? iconId,
  String? description,
  DateTime? createdAt,
}) =>
    MoodTableStruct(
      id: id,
      iconId: iconId,
      description: description,
      createdAt: createdAt,
    );
