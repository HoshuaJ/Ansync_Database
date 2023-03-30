import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'things_record.g.dart';

abstract class ThingsRecord
    implements Built<ThingsRecord, ThingsRecordBuilder> {
  static Serializer<ThingsRecord> get serializer => _$thingsRecordSerializer;

  String? get state;

  String? get typeId;

  String? get thingName;

  String? get codeID;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ThingsRecordBuilder builder) => builder
    ..state = ''
    ..typeId = ''
    ..thingName = ''
    ..codeID = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('things');

  static Stream<ThingsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ThingsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ThingsRecord._();
  factory ThingsRecord([void Function(ThingsRecordBuilder) updates]) =
      _$ThingsRecord;

  static ThingsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createThingsRecordData({
  String? state,
  String? typeId,
  String? thingName,
  String? codeID,
}) {
  final firestoreData = serializers.toFirestore(
    ThingsRecord.serializer,
    ThingsRecord(
      (t) => t
        ..state = state
        ..typeId = typeId
        ..thingName = thingName
        ..codeID = codeID,
    ),
  );

  return firestoreData;
}
