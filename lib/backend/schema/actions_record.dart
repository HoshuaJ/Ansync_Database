import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'actions_record.g.dart';

abstract class ActionsRecord
    implements Built<ActionsRecord, ActionsRecordBuilder> {
  static Serializer<ActionsRecord> get serializer => _$actionsRecordSerializer;

  String? get actionName;

  BuiltList<String>? get checks;

  CommandsStruct get commands;

  DocumentReference? get groups;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ActionsRecordBuilder builder) => builder
    ..actionName = ''
    ..checks = ListBuilder()
    ..commands = CommandsStructBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('actions')
          : FirebaseFirestore.instance.collectionGroup('actions');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('actions').doc();

  static Stream<ActionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ActionsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ActionsRecord._();
  factory ActionsRecord([void Function(ActionsRecordBuilder) updates]) =
      _$ActionsRecord;

  static ActionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createActionsRecordData({
  String? actionName,
  CommandsStruct? commands,
  DocumentReference? groups,
}) {
  final firestoreData = serializers.toFirestore(
    ActionsRecord.serializer,
    ActionsRecord(
      (a) => a
        ..actionName = actionName
        ..checks = null
        ..commands = CommandsStructBuilder()
        ..groups = groups,
    ),
  );

  // Handle nested data for "commands" field.
  addCommandsStructData(firestoreData, commands, 'commands');

  return firestoreData;
}
