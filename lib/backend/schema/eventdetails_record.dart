import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventdetailsRecord extends FirestoreRecord {
  EventdetailsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "number_of_partipants" field.
  String? _numberOfPartipants;
  String get numberOfPartipants => _numberOfPartipants ?? '';
  bool hasNumberOfPartipants() => _numberOfPartipants != null;

  // "description_event" field.
  String? _descriptionEvent;
  String get descriptionEvent => _descriptionEvent ?? '';
  bool hasDescriptionEvent() => _descriptionEvent != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _numberOfPartipants = snapshotData['number_of_partipants'] as String?;
    _descriptionEvent = snapshotData['description_event'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('eventdetails');

  static Stream<EventdetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventdetailsRecord.fromSnapshot(s));

  static Future<EventdetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventdetailsRecord.fromSnapshot(s));

  static EventdetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventdetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventdetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventdetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventdetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventdetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventdetailsRecordData({
  String? numberOfPartipants,
  String? descriptionEvent,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'number_of_partipants': numberOfPartipants,
      'description_event': descriptionEvent,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventdetailsRecordDocumentEquality
    implements Equality<EventdetailsRecord> {
  const EventdetailsRecordDocumentEquality();

  @override
  bool equals(EventdetailsRecord? e1, EventdetailsRecord? e2) {
    return e1?.numberOfPartipants == e2?.numberOfPartipants &&
        e1?.descriptionEvent == e2?.descriptionEvent &&
        e1?.name == e2?.name;
  }

  @override
  int hash(EventdetailsRecord? e) => const ListEquality()
      .hash([e?.numberOfPartipants, e?.descriptionEvent, e?.name]);

  @override
  bool isValidKey(Object? o) => o is EventdetailsRecord;
}
