import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'groups_record.g.dart';

abstract class GroupsRecord
    implements Built<GroupsRecord, GroupsRecordBuilder> {
  static Serializer<GroupsRecord> get serializer => _$groupsRecordSerializer;

  String? get groupName;

  BuiltList<String>? get users;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(GroupsRecordBuilder builder) => builder
    ..groupName = ''
    ..users = ListBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('groups')
          : FirebaseFirestore.instance.collectionGroup('groups');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('groups').doc();

  static Stream<GroupsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GroupsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GroupsRecord._();
  factory GroupsRecord([void Function(GroupsRecordBuilder) updates]) =
      _$GroupsRecord;

  static GroupsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGroupsRecordData({
  String? groupName,
}) {
  final firestoreData = serializers.toFirestore(
    GroupsRecord.serializer,
    GroupsRecord(
      (g) => g
        ..groupName = groupName
        ..users = null,
    ),
  );

  return firestoreData;
}
