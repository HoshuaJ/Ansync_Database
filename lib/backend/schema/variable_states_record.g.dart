// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variable_states_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VariableStatesRecord> _$variableStatesRecordSerializer =
    new _$VariableStatesRecordSerializer();

class _$VariableStatesRecordSerializer
    implements StructuredSerializer<VariableStatesRecord> {
  @override
  final Iterable<Type> types = const [
    VariableStatesRecord,
    _$VariableStatesRecord
  ];
  @override
  final String wireName = 'VariableStatesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, VariableStatesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'state1',
      serializers.serialize(object.state1,
          specifiedType: const FullType(VariableStateStruct)),
      'state2',
      serializers.serialize(object.state2,
          specifiedType: const FullType(VariableStateStruct)),
      'state3',
      serializers.serialize(object.state3,
          specifiedType: const FullType(VariableStateStruct)),
      'state4',
      serializers.serialize(object.state4,
          specifiedType: const FullType(VariableStateStruct)),
    ];
    Object? value;
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
  VariableStatesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VariableStatesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'state1':
          result.state1.replace(serializers.deserialize(value,
                  specifiedType: const FullType(VariableStateStruct))!
              as VariableStateStruct);
          break;
        case 'state2':
          result.state2.replace(serializers.deserialize(value,
                  specifiedType: const FullType(VariableStateStruct))!
              as VariableStateStruct);
          break;
        case 'state3':
          result.state3.replace(serializers.deserialize(value,
                  specifiedType: const FullType(VariableStateStruct))!
              as VariableStateStruct);
          break;
        case 'state4':
          result.state4.replace(serializers.deserialize(value,
                  specifiedType: const FullType(VariableStateStruct))!
              as VariableStateStruct);
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

class _$VariableStatesRecord extends VariableStatesRecord {
  @override
  final VariableStateStruct state1;
  @override
  final VariableStateStruct state2;
  @override
  final VariableStateStruct state3;
  @override
  final VariableStateStruct state4;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VariableStatesRecord(
          [void Function(VariableStatesRecordBuilder)? updates]) =>
      (new VariableStatesRecordBuilder()..update(updates))._build();

  _$VariableStatesRecord._(
      {required this.state1,
      required this.state2,
      required this.state3,
      required this.state4,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        state1, r'VariableStatesRecord', 'state1');
    BuiltValueNullFieldError.checkNotNull(
        state2, r'VariableStatesRecord', 'state2');
    BuiltValueNullFieldError.checkNotNull(
        state3, r'VariableStatesRecord', 'state3');
    BuiltValueNullFieldError.checkNotNull(
        state4, r'VariableStatesRecord', 'state4');
  }

  @override
  VariableStatesRecord rebuild(
          void Function(VariableStatesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VariableStatesRecordBuilder toBuilder() =>
      new VariableStatesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VariableStatesRecord &&
        state1 == other.state1 &&
        state2 == other.state2 &&
        state3 == other.state3 &&
        state4 == other.state4 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state1.hashCode);
    _$hash = $jc(_$hash, state2.hashCode);
    _$hash = $jc(_$hash, state3.hashCode);
    _$hash = $jc(_$hash, state4.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VariableStatesRecord')
          ..add('state1', state1)
          ..add('state2', state2)
          ..add('state3', state3)
          ..add('state4', state4)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VariableStatesRecordBuilder
    implements Builder<VariableStatesRecord, VariableStatesRecordBuilder> {
  _$VariableStatesRecord? _$v;

  VariableStateStructBuilder? _state1;
  VariableStateStructBuilder get state1 =>
      _$this._state1 ??= new VariableStateStructBuilder();
  set state1(VariableStateStructBuilder? state1) => _$this._state1 = state1;

  VariableStateStructBuilder? _state2;
  VariableStateStructBuilder get state2 =>
      _$this._state2 ??= new VariableStateStructBuilder();
  set state2(VariableStateStructBuilder? state2) => _$this._state2 = state2;

  VariableStateStructBuilder? _state3;
  VariableStateStructBuilder get state3 =>
      _$this._state3 ??= new VariableStateStructBuilder();
  set state3(VariableStateStructBuilder? state3) => _$this._state3 = state3;

  VariableStateStructBuilder? _state4;
  VariableStateStructBuilder get state4 =>
      _$this._state4 ??= new VariableStateStructBuilder();
  set state4(VariableStateStructBuilder? state4) => _$this._state4 = state4;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VariableStatesRecordBuilder() {
    VariableStatesRecord._initializeBuilder(this);
  }

  VariableStatesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state1 = $v.state1.toBuilder();
      _state2 = $v.state2.toBuilder();
      _state3 = $v.state3.toBuilder();
      _state4 = $v.state4.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VariableStatesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VariableStatesRecord;
  }

  @override
  void update(void Function(VariableStatesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VariableStatesRecord build() => _build();

  _$VariableStatesRecord _build() {
    _$VariableStatesRecord _$result;
    try {
      _$result = _$v ??
          new _$VariableStatesRecord._(
              state1: state1.build(),
              state2: state2.build(),
              state3: state3.build(),
              state4: state4.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'state1';
        state1.build();
        _$failedField = 'state2';
        state2.build();
        _$failedField = 'state3';
        state3.build();
        _$failedField = 'state4';
        state4.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VariableStatesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
