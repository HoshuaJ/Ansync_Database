import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'variable_state_struct.g.dart';

abstract class VariableStateStruct
    implements Built<VariableStateStruct, VariableStateStructBuilder> {
  static Serializer<VariableStateStruct> get serializer =>
      _$variableStateStructSerializer;

  String? get doButton1;

  bool? get doButton3;

  int? get doButton4;

  DateTime? get doButton5;

  String? get stateName;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(VariableStateStructBuilder builder) => builder
    ..doButton1 = ''
    ..doButton3 = false
    ..doButton4 = 0
    ..stateName = ''
    ..firestoreUtilData = FirestoreUtilData();

  VariableStateStruct._();
  factory VariableStateStruct(
          [void Function(VariableStateStructBuilder) updates]) =
      _$VariableStateStruct;
}

VariableStateStruct createVariableStateStruct({
  String? doButton1,
  bool? doButton3,
  int? doButton4,
  DateTime? doButton5,
  String? stateName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VariableStateStruct(
      (v) => v
        ..doButton1 = doButton1
        ..doButton3 = doButton3
        ..doButton4 = doButton4
        ..doButton5 = doButton5
        ..stateName = stateName
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

VariableStateStruct? updateVariableStateStruct(
  VariableStateStruct? variableState, {
  bool clearUnsetFields = true,
}) =>
    variableState != null
        ? (variableState.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addVariableStateStructData(
  Map<String, dynamic> firestoreData,
  VariableStateStruct? variableState,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (variableState == null) {
    return;
  }
  if (variableState.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && variableState.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final variableStateData =
      getVariableStateFirestoreData(variableState, forFieldValue);
  final nestedData =
      variableStateData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = variableState.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getVariableStateFirestoreData(
  VariableStateStruct? variableState, [
  bool forFieldValue = false,
]) {
  if (variableState == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(VariableStateStruct.serializer, variableState);

  // Add any Firestore field values
  variableState.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVariableStateListFirestoreData(
  List<VariableStateStruct>? variableStates,
) =>
    variableStates
        ?.map((v) => getVariableStateFirestoreData(v, true))
        .toList() ??
    [];
