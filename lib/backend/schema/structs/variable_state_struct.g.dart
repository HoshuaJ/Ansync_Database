// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variable_state_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VariableStateStruct> _$variableStateStructSerializer =
    new _$VariableStateStructSerializer();

class _$VariableStateStructSerializer
    implements StructuredSerializer<VariableStateStruct> {
  @override
  final Iterable<Type> types = const [
    VariableStateStruct,
    _$VariableStateStruct
  ];
  @override
  final String wireName = 'VariableStateStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, VariableStateStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.doButton1;
    if (value != null) {
      result
        ..add('doButton1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.doButton3;
    if (value != null) {
      result
        ..add('doButton3')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.doButton4;
    if (value != null) {
      result
        ..add('doButton4')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.doButton5;
    if (value != null) {
      result
        ..add('doButton5')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.stateName;
    if (value != null) {
      result
        ..add('stateName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  VariableStateStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VariableStateStructBuilder();

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
        case 'doButton3':
          result.doButton3 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'doButton4':
          result.doButton4 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'doButton5':
          result.doButton5 = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'stateName':
          result.stateName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$VariableStateStruct extends VariableStateStruct {
  @override
  final String? doButton1;
  @override
  final bool? doButton3;
  @override
  final int? doButton4;
  @override
  final DateTime? doButton5;
  @override
  final String? stateName;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$VariableStateStruct(
          [void Function(VariableStateStructBuilder)? updates]) =>
      (new VariableStateStructBuilder()..update(updates))._build();

  _$VariableStateStruct._(
      {this.doButton1,
      this.doButton3,
      this.doButton4,
      this.doButton5,
      this.stateName,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'VariableStateStruct', 'firestoreUtilData');
  }

  @override
  VariableStateStruct rebuild(
          void Function(VariableStateStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VariableStateStructBuilder toBuilder() =>
      new VariableStateStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VariableStateStruct &&
        doButton1 == other.doButton1 &&
        doButton3 == other.doButton3 &&
        doButton4 == other.doButton4 &&
        doButton5 == other.doButton5 &&
        stateName == other.stateName &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, doButton1.hashCode);
    _$hash = $jc(_$hash, doButton3.hashCode);
    _$hash = $jc(_$hash, doButton4.hashCode);
    _$hash = $jc(_$hash, doButton5.hashCode);
    _$hash = $jc(_$hash, stateName.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VariableStateStruct')
          ..add('doButton1', doButton1)
          ..add('doButton3', doButton3)
          ..add('doButton4', doButton4)
          ..add('doButton5', doButton5)
          ..add('stateName', stateName)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class VariableStateStructBuilder
    implements Builder<VariableStateStruct, VariableStateStructBuilder> {
  _$VariableStateStruct? _$v;

  String? _doButton1;
  String? get doButton1 => _$this._doButton1;
  set doButton1(String? doButton1) => _$this._doButton1 = doButton1;

  bool? _doButton3;
  bool? get doButton3 => _$this._doButton3;
  set doButton3(bool? doButton3) => _$this._doButton3 = doButton3;

  int? _doButton4;
  int? get doButton4 => _$this._doButton4;
  set doButton4(int? doButton4) => _$this._doButton4 = doButton4;

  DateTime? _doButton5;
  DateTime? get doButton5 => _$this._doButton5;
  set doButton5(DateTime? doButton5) => _$this._doButton5 = doButton5;

  String? _stateName;
  String? get stateName => _$this._stateName;
  set stateName(String? stateName) => _$this._stateName = stateName;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  VariableStateStructBuilder() {
    VariableStateStruct._initializeBuilder(this);
  }

  VariableStateStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _doButton1 = $v.doButton1;
      _doButton3 = $v.doButton3;
      _doButton4 = $v.doButton4;
      _doButton5 = $v.doButton5;
      _stateName = $v.stateName;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VariableStateStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VariableStateStruct;
  }

  @override
  void update(void Function(VariableStateStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VariableStateStruct build() => _build();

  _$VariableStateStruct _build() {
    final _$result = _$v ??
        new _$VariableStateStruct._(
            doButton1: doButton1,
            doButton3: doButton3,
            doButton4: doButton4,
            doButton5: doButton5,
            stateName: stateName,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData,
                r'VariableStateStruct',
                'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
