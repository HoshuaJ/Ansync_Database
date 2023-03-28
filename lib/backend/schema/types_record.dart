import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'types_record.g.dart';

abstract class TypesRecord implements Built<TypesRecord, TypesRecordBuilder> {
  static Serializer<TypesRecord> get serializer => _$typesRecordSerializer;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  String? get creator;

  String? get typeName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TypesRecordBuilder builder) => builder
    ..creator = ''
    ..typeName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('types');

  static Stream<TypesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TypesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TypesRecord._();
  factory TypesRecord([void Function(TypesRecordBuilder) updates]) =
      _$TypesRecord;

  static TypesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTypesRecordData({
  DateTime? createdTime,
  String? creator,
  String? typeName,
}) {
  final firestoreData = serializers.toFirestore(
    TypesRecord.serializer,
    TypesRecord(
      (t) => t
        ..createdTime = createdTime
        ..creator = creator
        ..typeName = typeName,
    ),
  );

  return firestoreData;
}
