// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commands_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommandsStruct> _$commandsStructSerializer =
    new _$CommandsStructSerializer();

class _$CommandsStructSerializer
    implements StructuredSerializer<CommandsStruct> {
  @override
  final Iterable<Type> types = const [CommandsStruct, _$CommandsStruct];
  @override
  final String wireName = 'CommandsStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, CommandsStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.addLog;
    if (value != null) {
      result
        ..add('addLog')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.customLog;
    if (value != null) {
      result
        ..add('customLog')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.removeVar;
    if (value != null) {
      result
        ..add('removeVar')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.sendEmail;
    if (value != null) {
      result
        ..add('sendEmail')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.setVar;
    if (value != null) {
      result
        ..add('setVar')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.addLogMessage;
    if (value != null) {
      result
        ..add('addLogMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sendEmailAddress;
    if (value != null) {
      result
        ..add('sendEmailAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sendEmailMessage;
    if (value != null) {
      result
        ..add('sendEmailMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sendEmailSubject;
    if (value != null) {
      result
        ..add('sendEmailSubject')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CommandsStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommandsStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'addLog':
          result.addLog = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'customLog':
          result.customLog = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'removeVar':
          result.removeVar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'sendEmail':
          result.sendEmail = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'setVar':
          result.setVar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'addLogMessage':
          result.addLogMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sendEmailAddress':
          result.sendEmailAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sendEmailMessage':
          result.sendEmailMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sendEmailSubject':
          result.sendEmailSubject = serializers.deserialize(value,
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

class _$CommandsStruct extends CommandsStruct {
  @override
  final bool? addLog;
  @override
  final bool? customLog;
  @override
  final BuiltList<String>? removeVar;
  @override
  final bool? sendEmail;
  @override
  final BuiltList<String>? setVar;
  @override
  final String? addLogMessage;
  @override
  final String? sendEmailAddress;
  @override
  final String? sendEmailMessage;
  @override
  final String? sendEmailSubject;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$CommandsStruct([void Function(CommandsStructBuilder)? updates]) =>
      (new CommandsStructBuilder()..update(updates))._build();

  _$CommandsStruct._(
      {this.addLog,
      this.customLog,
      this.removeVar,
      this.sendEmail,
      this.setVar,
      this.addLogMessage,
      this.sendEmailAddress,
      this.sendEmailMessage,
      this.sendEmailSubject,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'CommandsStruct', 'firestoreUtilData');
  }

  @override
  CommandsStruct rebuild(void Function(CommandsStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommandsStructBuilder toBuilder() =>
      new CommandsStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommandsStruct &&
        addLog == other.addLog &&
        customLog == other.customLog &&
        removeVar == other.removeVar &&
        sendEmail == other.sendEmail &&
        setVar == other.setVar &&
        addLogMessage == other.addLogMessage &&
        sendEmailAddress == other.sendEmailAddress &&
        sendEmailMessage == other.sendEmailMessage &&
        sendEmailSubject == other.sendEmailSubject &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, addLog.hashCode);
    _$hash = $jc(_$hash, customLog.hashCode);
    _$hash = $jc(_$hash, removeVar.hashCode);
    _$hash = $jc(_$hash, sendEmail.hashCode);
    _$hash = $jc(_$hash, setVar.hashCode);
    _$hash = $jc(_$hash, addLogMessage.hashCode);
    _$hash = $jc(_$hash, sendEmailAddress.hashCode);
    _$hash = $jc(_$hash, sendEmailMessage.hashCode);
    _$hash = $jc(_$hash, sendEmailSubject.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommandsStruct')
          ..add('addLog', addLog)
          ..add('customLog', customLog)
          ..add('removeVar', removeVar)
          ..add('sendEmail', sendEmail)
          ..add('setVar', setVar)
          ..add('addLogMessage', addLogMessage)
          ..add('sendEmailAddress', sendEmailAddress)
          ..add('sendEmailMessage', sendEmailMessage)
          ..add('sendEmailSubject', sendEmailSubject)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class CommandsStructBuilder
    implements Builder<CommandsStruct, CommandsStructBuilder> {
  _$CommandsStruct? _$v;

  bool? _addLog;
  bool? get addLog => _$this._addLog;
  set addLog(bool? addLog) => _$this._addLog = addLog;

  bool? _customLog;
  bool? get customLog => _$this._customLog;
  set customLog(bool? customLog) => _$this._customLog = customLog;

  ListBuilder<String>? _removeVar;
  ListBuilder<String> get removeVar =>
      _$this._removeVar ??= new ListBuilder<String>();
  set removeVar(ListBuilder<String>? removeVar) =>
      _$this._removeVar = removeVar;

  bool? _sendEmail;
  bool? get sendEmail => _$this._sendEmail;
  set sendEmail(bool? sendEmail) => _$this._sendEmail = sendEmail;

  ListBuilder<String>? _setVar;
  ListBuilder<String> get setVar =>
      _$this._setVar ??= new ListBuilder<String>();
  set setVar(ListBuilder<String>? setVar) => _$this._setVar = setVar;

  String? _addLogMessage;
  String? get addLogMessage => _$this._addLogMessage;
  set addLogMessage(String? addLogMessage) =>
      _$this._addLogMessage = addLogMessage;

  String? _sendEmailAddress;
  String? get sendEmailAddress => _$this._sendEmailAddress;
  set sendEmailAddress(String? sendEmailAddress) =>
      _$this._sendEmailAddress = sendEmailAddress;

  String? _sendEmailMessage;
  String? get sendEmailMessage => _$this._sendEmailMessage;
  set sendEmailMessage(String? sendEmailMessage) =>
      _$this._sendEmailMessage = sendEmailMessage;

  String? _sendEmailSubject;
  String? get sendEmailSubject => _$this._sendEmailSubject;
  set sendEmailSubject(String? sendEmailSubject) =>
      _$this._sendEmailSubject = sendEmailSubject;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  CommandsStructBuilder() {
    CommandsStruct._initializeBuilder(this);
  }

  CommandsStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _addLog = $v.addLog;
      _customLog = $v.customLog;
      _removeVar = $v.removeVar?.toBuilder();
      _sendEmail = $v.sendEmail;
      _setVar = $v.setVar?.toBuilder();
      _addLogMessage = $v.addLogMessage;
      _sendEmailAddress = $v.sendEmailAddress;
      _sendEmailMessage = $v.sendEmailMessage;
      _sendEmailSubject = $v.sendEmailSubject;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommandsStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommandsStruct;
  }

  @override
  void update(void Function(CommandsStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommandsStruct build() => _build();

  _$CommandsStruct _build() {
    _$CommandsStruct _$result;
    try {
      _$result = _$v ??
          new _$CommandsStruct._(
              addLog: addLog,
              customLog: customLog,
              removeVar: _removeVar?.build(),
              sendEmail: sendEmail,
              setVar: _setVar?.build(),
              addLogMessage: addLogMessage,
              sendEmailAddress: sendEmailAddress,
              sendEmailMessage: sendEmailMessage,
              sendEmailSubject: sendEmailSubject,
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData, r'CommandsStruct', 'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'removeVar';
        _removeVar?.build();

        _$failedField = 'setVar';
        _setVar?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CommandsStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
