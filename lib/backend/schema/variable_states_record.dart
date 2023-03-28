import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'variable_states_record.g.dart';

abstract class VariableStatesRecord
    implements Built<VariableStatesRecord, VariableStatesRecordBuilder> {
  static Serializer<VariableStatesRecord> get serializer =>
      _$variableStatesRecordSerializer;

  VariableStateStruct get state1;

  VariableStateStruct get state2;

  VariableStateStruct get state3;

  VariableStateStruct get state4;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(VariableStatesRecordBuilder builder) => builder
    ..state1 = VariableStateStructBuilder()
    ..state2 = VariableStateStructBuilder()
    ..state3 = VariableStateStructBuilder()
    ..state4 = VariableStateStructBuilder();

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
  VariableStateStruct? state1,
  VariableStateStruct? state2,
  VariableStateStruct? state3,
  VariableStateStruct? state4,
}) {
  final firestoreData = serializers.toFirestore(
    VariableStatesRecord.serializer,
    VariableStatesRecord(
      (v) => v
        ..state1 = VariableStateStructBuilder()
        ..state2 = VariableStateStructBuilder()
        ..state3 = VariableStateStructBuilder()
        ..state4 = VariableStateStructBuilder(),
    ),
  );

  // Handle nested data for "state1" field.
  addVariableStateStructData(firestoreData, state1, 'state1');

  // Handle nested data for "state2" field.
  addVariableStateStructData(firestoreData, state2, 'state2');

  // Handle nested data for "state3" field.
  addVariableStateStructData(firestoreData, state3, 'state3');

  // Handle nested data for "state4" field.
  addVariableStateStructData(firestoreData, state4, 'state4');

  return firestoreData;
}
