import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'variable_states_record.g.dart';

abstract class VariableStatesRecord
    implements Built<VariableStatesRecord, VariableStatesRecordBuilder> {
  static Serializer<VariableStatesRecord> get serializer =>
      _$variableStatesRecordSerializer;

  String? get doButton1;

  String? get doButton2;

  String? get doButton3;

  String? get doButton4;

  String? get stateName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(VariableStatesRecordBuilder builder) => builder
    ..doButton1 = ''
    ..doButton2 = ''
    ..doButton3 = ''
    ..doButton4 = ''
    ..stateName = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('variableStates')
          : FirebaseFirestore.instance.collectionGroup('variableStates');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('variableStates').doc();

  static Stream<VariableStatesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VariableStatesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VariableStatesRecord._();
  factory VariableStatesRecord(
          [void Function(VariableStatesRecordBuilder) updates]) =
      _$VariableStatesRecord;

  static VariableStatesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVariableStatesRecordData({
  String? doButton1,
  String? doButton2,
  String? doButton3,
  String? doButton4,
  String? stateName,
}) {
  final firestoreData = serializers.toFirestore(
    VariableStatesRecord.serializer,
    VariableStatesRecord(
      (v) => v
        ..doButton1 = doButton1
        ..doButton2 = doButton2
        ..doButton3 = doButton3
        ..doButton4 = doButton4
        ..stateName = stateName,
    ),
  );

  return firestoreData;
}
