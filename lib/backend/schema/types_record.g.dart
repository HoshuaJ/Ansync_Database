// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TypesRecord> _$typesRecordSerializer = new _$TypesRecordSerializer();

class _$TypesRecordSerializer implements StructuredSerializer<TypesRecord> {
  @override
  final Iterable<Type> types = const [TypesRecord, _$TypesRecord];
  @override
  final String wireName = 'TypesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TypesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.creator;
    if (value != null) {
      result
        ..add('creator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.typeName;
    if (value != null) {
      result
        ..add('typeName')
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
  TypesRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TypesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'creator':
          result.creator = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'typeName':
          result.typeName = serializers.deserialize(value,
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

class _$TypesRecord extends TypesRecord {
  @override
  final DateTime? createdTime;
  @override
  final String? creator;
  @override
  final String? typeName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TypesRecord([void Function(TypesRecordBuilder)? updates]) =>
      (new TypesRecordBuilder()..update(updates))._build();

  _$TypesRecord._({this.createdTime, this.creator, this.typeName, this.ffRef})
      : super._();

  @override
  TypesRecord rebuild(void Function(TypesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TypesRecordBuilder toBuilder() => new TypesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TypesRecord &&
        createdTime == other.createdTime &&
        creator == other.creator &&
        typeName == other.typeName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, creator.hashCode);
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TypesRecord')
          ..add('createdTime', createdTime)
          ..add('creator', creator)
          ..add('typeName', typeName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TypesRecordBuilder implements Builder<TypesRecord, TypesRecordBuilder> {
  _$TypesRecord? _$v;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _creator;
  String? get creator => _$this._creator;
  set creator(String? creator) => _$this._creator = creator;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TypesRecordBuilder() {
    TypesRecord._initializeBuilder(this);
  }

  TypesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdTime = $v.createdTime;
      _creator = $v.creator;
      _typeName = $v.typeName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TypesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TypesRecord;
  }

  @override
  void update(void Function(TypesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TypesRecord build() => _build();

  _$TypesRecord _build() {
    final _$result = _$v ??
        new _$TypesRecord._(
            createdTime: createdTime,
            creator: creator,
            typeName: typeName,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
