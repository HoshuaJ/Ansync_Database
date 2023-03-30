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
    final result = <Object?>[];
    Object? value;
    value = object.doButton1;
    if (value != null) {
      result
        ..add('doButton1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.doButton2;
    if (value != null) {
      result
        ..add('doButton2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.doButton3;
    if (value != null) {
      result
        ..add('doButton3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.doButton4;
    if (value != null) {
      result
        ..add('doButton4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stateName;
    if (value != null) {
      result
        ..add('stateName')
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
        case 'doButton1':
          result.doButton1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'doButton2':
          result.doButton2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'doButton3':
          result.doButton3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'doButton4':
          result.doButton4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'stateName':
          result.stateName = serializers.deserialize(value,
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

class _$VariableStatesRecord extends VariableStatesRecord {
  @override
  final String? doButton1;
  @override
  final String? doButton2;
  @override
  final String? doButton3;
  @override
  final String? doButton4;
  @override
  final String? stateName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VariableStatesRecord(
          [void Function(VariableStatesRecordBuilder)? updates]) =>
      (new VariableStatesRecordBuilder()..update(updates))._build();

  _$VariableStatesRecord._(
      {this.doButton1,
      this.doButton2,
      this.doButton3,
      this.doButton4,
      this.stateName,
      this.ffRef})
      : super._();

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
        doButton1 == other.doButton1 &&
        doButton2 == other.doButton2 &&
        doButton3 == other.doButton3 &&
        doButton4 == other.doButton4 &&
        stateName == other.stateName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, doButton1.hashCode);
    _$hash = $jc(_$hash, doButton2.hashCode);
    _$hash = $jc(_$hash, doButton3.hashCode);
    _$hash = $jc(_$hash, doButton4.hashCode);
    _$hash = $jc(_$hash, stateName.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VariableStatesRecord')
          ..add('doButton1', doButton1)
          ..add('doButton2', doButton2)
          ..add('doButton3', doButton3)
          ..add('doButton4', doButton4)
          ..add('stateName', stateName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VariableStatesRecordBuilder
    implements Builder<VariableStatesRecord, VariableStatesRecordBuilder> {
  _$VariableStatesRecord? _$v;

  String? _doButton1;
  String? get doButton1 => _$this._doButton1;
  set doButton1(String? doButton1) => _$this._doButton1 = doButton1;

  String? _doButton2;
  String? get doButton2 => _$this._doButton2;
  set doButton2(String? doButton2) => _$this._doButton2 = doButton2;

  String? _doButton3;
  String? get doButton3 => _$this._doButton3;
  set doButton3(String? doButton3) => _$this._doButton3 = doButton3;

  String? _doButton4;
  String? get doButton4 => _$this._doButton4;
  set doButton4(String? doButton4) => _$this._doButton4 = doButton4;

  String? _stateName;
  String? get stateName => _$this._stateName;
  set stateName(String? stateName) => _$this._stateName = stateName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VariableStatesRecordBuilder() {
    VariableStatesRecord._initializeBuilder(this);
  }

  VariableStatesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _doButton1 = $v.doButton1;
      _doButton2 = $v.doButton2;
      _doButton3 = $v.doButton3;
      _doButton4 = $v.doButton4;
      _stateName = $v.stateName;
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
    final _$result = _$v ??
        new _$VariableStatesRecord._(
            doButton1: doButton1,
            doButton2: doButton2,
            doButton3: doButton3,
            doButton4: doButton4,
            stateName: stateName,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
