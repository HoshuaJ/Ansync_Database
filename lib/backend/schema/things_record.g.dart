// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'things_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ThingsRecord> _$thingsRecordSerializer =
    new _$ThingsRecordSerializer();

class _$ThingsRecordSerializer implements StructuredSerializer<ThingsRecord> {
  @override
  final Iterable<Type> types = const [ThingsRecord, _$ThingsRecord];
  @override
  final String wireName = 'ThingsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ThingsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.typeId;
    if (value != null) {
      result
        ..add('typeId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thingName;
    if (value != null) {
      result
        ..add('thingName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.codeID;
    if (value != null) {
      result
        ..add('codeID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.initDate;
    if (value != null) {
      result
        ..add('initDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.states;
    if (value != null) {
      result
        ..add('states')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  ThingsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ThingsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'typeId':
          result.typeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thingName':
          result.thingName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'codeID':
          result.codeID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'initDate':
          result.initDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'states':
          result.states.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$ThingsRecord extends ThingsRecord {
  @override
  final String? typeId;
  @override
  final String? thingName;
  @override
  final String? codeID;
  @override
  final DateTime? initDate;
  @override
  final BuiltList<String>? states;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ThingsRecord([void Function(ThingsRecordBuilder)? updates]) =>
      (new ThingsRecordBuilder()..update(updates))._build();

  _$ThingsRecord._(
      {this.typeId,
      this.thingName,
      this.codeID,
      this.initDate,
      this.states,
      this.ffRef})
      : super._();

  @override
  ThingsRecord rebuild(void Function(ThingsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThingsRecordBuilder toBuilder() => new ThingsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThingsRecord &&
        typeId == other.typeId &&
        thingName == other.thingName &&
        codeID == other.codeID &&
        initDate == other.initDate &&
        states == other.states &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, typeId.hashCode);
    _$hash = $jc(_$hash, thingName.hashCode);
    _$hash = $jc(_$hash, codeID.hashCode);
    _$hash = $jc(_$hash, initDate.hashCode);
    _$hash = $jc(_$hash, states.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ThingsRecord')
          ..add('typeId', typeId)
          ..add('thingName', thingName)
          ..add('codeID', codeID)
          ..add('initDate', initDate)
          ..add('states', states)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ThingsRecordBuilder
    implements Builder<ThingsRecord, ThingsRecordBuilder> {
  _$ThingsRecord? _$v;

  String? _typeId;
  String? get typeId => _$this._typeId;
  set typeId(String? typeId) => _$this._typeId = typeId;

  String? _thingName;
  String? get thingName => _$this._thingName;
  set thingName(String? thingName) => _$this._thingName = thingName;

  String? _codeID;
  String? get codeID => _$this._codeID;
  set codeID(String? codeID) => _$this._codeID = codeID;

  DateTime? _initDate;
  DateTime? get initDate => _$this._initDate;
  set initDate(DateTime? initDate) => _$this._initDate = initDate;

  ListBuilder<String>? _states;
  ListBuilder<String> get states =>
      _$this._states ??= new ListBuilder<String>();
  set states(ListBuilder<String>? states) => _$this._states = states;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ThingsRecordBuilder() {
    ThingsRecord._initializeBuilder(this);
  }

  ThingsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _typeId = $v.typeId;
      _thingName = $v.thingName;
      _codeID = $v.codeID;
      _initDate = $v.initDate;
      _states = $v.states?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ThingsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ThingsRecord;
  }

  @override
  void update(void Function(ThingsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ThingsRecord build() => _build();

  _$ThingsRecord _build() {
    _$ThingsRecord _$result;
    try {
      _$result = _$v ??
          new _$ThingsRecord._(
              typeId: typeId,
              thingName: thingName,
              codeID: codeID,
              initDate: initDate,
              states: _states?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'states';
        _states?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ThingsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
