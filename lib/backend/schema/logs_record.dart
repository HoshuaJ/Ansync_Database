import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'logs_record.g.dart';

abstract class LogsRecord implements Built<LogsRecord, LogsRecordBuilder> {
  static Serializer<LogsRecord> get serializer => _$logsRecordSerializer;

  String? get message;

  DateTime? get timeOfChange;

  String? get user;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(LogsRecordBuilder builder) => builder
    ..message = ''
    ..user = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('logs')
          : FirebaseFirestore.instance.collectionGroup('logs');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('logs').doc();

  static Stream<LogsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LogsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LogsRecord._();
  factory LogsRecord([void Function(LogsRecordBuilder) updates]) = _$LogsRecord;

  static LogsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLogsRecordData({
  String? message,
  DateTime? timeOfChange,
  String? user,
}) {
  final firestoreData = serializers.toFirestore(
    LogsRecord.serializer,
    LogsRecord(
      (l) => l
        ..message = message
        ..timeOfChange = timeOfChange
        ..user = user,
    ),
  );

  return firestoreData;
}
