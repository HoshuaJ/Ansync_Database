// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActionsRecord> _$actionsRecordSerializer =
    new _$ActionsRecordSerializer();

class _$ActionsRecordSerializer implements StructuredSerializer<ActionsRecord> {
  @override
  final Iterable<Type> types = const [ActionsRecord, _$ActionsRecord];
  @override
  final String wireName = 'ActionsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ActionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'commands',
      serializers.serialize(object.commands,
          specifiedType: const FullType(CommandsStruct)),
    ];
    Object? value;
    value = object.actionName;
    if (value != null) {
      result
        ..add('actionName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.checks;
    if (value != null) {
      result
        ..add('checks')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.groups;
    if (value != null) {
      result
        ..add('groups')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  ActionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'actionName':
          result.actionName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'checks':
          result.checks.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'commands':
          result.commands.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandsStruct))!
              as CommandsStruct);
          break;
        case 'groups':
          result.groups = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$ActionsRecord extends ActionsRecord {
  @override
  final String? actionName;
  @override
  final BuiltList<String>? checks;
  @override
  final CommandsStruct commands;
  @override
  final DocumentReference<Object?>? groups;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ActionsRecord([void Function(ActionsRecordBuilder)? updates]) =>
      (new ActionsRecordBuilder()..update(updates))._build();

  _$ActionsRecord._(
      {this.actionName,
      this.checks,
      required this.commands,
      this.groups,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        commands, r'ActionsRecord', 'commands');
  }

  @override
  ActionsRecord rebuild(void Function(ActionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActionsRecordBuilder toBuilder() => new ActionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActionsRecord &&
        actionName == other.actionName &&
        checks == other.checks &&
        commands == other.commands &&
        groups == other.groups &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, actionName.hashCode);
    _$hash = $jc(_$hash, checks.hashCode);
    _$hash = $jc(_$hash, commands.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActionsRecord')
          ..add('actionName', actionName)
          ..add('checks', checks)
          ..add('commands', commands)
          ..add('groups', groups)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ActionsRecordBuilder
    implements Builder<ActionsRecord, ActionsRecordBuilder> {
  _$ActionsRecord? _$v;

  String? _actionName;
  String? get actionName => _$this._actionName;
  set actionName(String? actionName) => _$this._actionName = actionName;

  ListBuilder<String>? _checks;
  ListBuilder<String> get checks =>
      _$this._checks ??= new ListBuilder<String>();
  set checks(ListBuilder<String>? checks) => _$this._checks = checks;

  CommandsStructBuilder? _commands;
  CommandsStructBuilder get commands =>
      _$this._commands ??= new CommandsStructBuilder();
  set commands(CommandsStructBuilder? commands) => _$this._commands = commands;

  DocumentReference<Object?>? _groups;
  DocumentReference<Object?>? get groups => _$this._groups;
  set groups(DocumentReference<Object?>? groups) => _$this._groups = groups;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ActionsRecordBuilder() {
    ActionsRecord._initializeBuilder(this);
  }

  ActionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _actionName = $v.actionName;
      _checks = $v.checks?.toBuilder();
      _commands = $v.commands.toBuilder();
      _groups = $v.groups;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActionsRecord;
  }

  @override
  void update(void Function(ActionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActionsRecord build() => _build();

  _$ActionsRecord _build() {
    _$ActionsRecord _$result;
    try {
      _$result = _$v ??
          new _$ActionsRecord._(
              actionName: actionName,
              checks: _checks?.build(),
              commands: commands.build(),
              groups: groups,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'checks';
        _checks?.build();
        _$failedField = 'commands';
        commands.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ActionsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
