// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LogsRecord> _$logsRecordSerializer = new _$LogsRecordSerializer();

class _$LogsRecordSerializer implements StructuredSerializer<LogsRecord> {
  @override
  final Iterable<Type> types = const [LogsRecord, _$LogsRecord];
  @override
  final String wireName = 'LogsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LogsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.action;
    if (value != null) {
      result
        ..add('action')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thingId;
    if (value != null) {
      result
        ..add('thingId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  LogsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LogsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'action':
          result.action = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thingId':
          result.thingId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$LogsRecord extends LogsRecord {
  @override
  final String? action;
  @override
  final String? thingId;
  @override
  final DateTime? timestamp;
  @override
  final String? userId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LogsRecord([void Function(LogsRecordBuilder)? updates]) =>
      (new LogsRecordBuilder()..update(updates))._build();

  _$LogsRecord._(
      {this.action, this.thingId, this.timestamp, this.userId, this.ffRef})
      : super._();

  @override
  LogsRecord rebuild(void Function(LogsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogsRecordBuilder toBuilder() => new LogsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogsRecord &&
        action == other.action &&
        thingId == other.thingId &&
        timestamp == other.timestamp &&
        userId == other.userId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, thingId.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LogsRecord')
          ..add('action', action)
          ..add('thingId', thingId)
          ..add('timestamp', timestamp)
          ..add('userId', userId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LogsRecordBuilder implements Builder<LogsRecord, LogsRecordBuilder> {
  _$LogsRecord? _$v;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  String? _thingId;
  String? get thingId => _$this._thingId;
  set thingId(String? thingId) => _$this._thingId = thingId;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LogsRecordBuilder() {
    LogsRecord._initializeBuilder(this);
  }

  LogsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _thingId = $v.thingId;
      _timestamp = $v.timestamp;
      _userId = $v.userId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LogsRecord;
  }

  @override
  void update(void Function(LogsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LogsRecord build() => _build();

  _$LogsRecord _build() {
    final _$result = _$v ??
        new _$LogsRecord._(
            action: action,
            thingId: thingId,
            timestamp: timestamp,
            userId: userId,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
