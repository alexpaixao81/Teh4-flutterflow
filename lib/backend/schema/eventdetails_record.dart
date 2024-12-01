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

  // "name_of_participants" field.
  String? _nameOfParticipants;
  String get nameOfParticipants => _nameOfParticipants ?? '';
  bool hasNameOfParticipants() => _nameOfParticipants != null;

  // "number_of_partipants" field.
  String? _numberOfPartipants;
  String get numberOfPartipants => _numberOfPartipants ?? '';
  bool hasNumberOfPartipants() => _numberOfPartipants != null;

  // "evento1" field.
  bool? _evento1;
  bool get evento1 => _evento1 ?? false;
  bool hasEvento1() => _evento1 != null;

  // "evento2" field.
  bool? _evento2;
  bool get evento2 => _evento2 ?? false;
  bool hasEvento2() => _evento2 != null;

  // "evento3" field.
  bool? _evento3;
  bool get evento3 => _evento3 ?? false;
  bool hasEvento3() => _evento3 != null;

  // "evento4" field.
  bool? _evento4;
  bool get evento4 => _evento4 ?? false;
  bool hasEvento4() => _evento4 != null;

  // "evento5" field.
  bool? _evento5;
  bool get evento5 => _evento5 ?? false;
  bool hasEvento5() => _evento5 != null;

  void _initializeFields() {
    _nameOfParticipants = snapshotData['name_of_participants'] as String?;
    _numberOfPartipants = snapshotData['number_of_partipants'] as String?;
    _evento1 = snapshotData['evento1'] as bool?;
    _evento2 = snapshotData['evento2'] as bool?;
    _evento3 = snapshotData['evento3'] as bool?;
    _evento4 = snapshotData['evento4'] as bool?;
    _evento5 = snapshotData['evento5'] as bool?;
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
  String? nameOfParticipants,
  String? numberOfPartipants,
  bool? evento1,
  bool? evento2,
  bool? evento3,
  bool? evento4,
  bool? evento5,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name_of_participants': nameOfParticipants,
      'number_of_partipants': numberOfPartipants,
      'evento1': evento1,
      'evento2': evento2,
      'evento3': evento3,
      'evento4': evento4,
      'evento5': evento5,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventdetailsRecordDocumentEquality
    implements Equality<EventdetailsRecord> {
  const EventdetailsRecordDocumentEquality();

  @override
  bool equals(EventdetailsRecord? e1, EventdetailsRecord? e2) {
    return e1?.nameOfParticipants == e2?.nameOfParticipants &&
        e1?.numberOfPartipants == e2?.numberOfPartipants &&
        e1?.evento1 == e2?.evento1 &&
        e1?.evento2 == e2?.evento2 &&
        e1?.evento3 == e2?.evento3 &&
        e1?.evento4 == e2?.evento4 &&
        e1?.evento5 == e2?.evento5;
  }

  @override
  int hash(EventdetailsRecord? e) => const ListEquality().hash([
        e?.nameOfParticipants,
        e?.numberOfPartipants,
        e?.evento1,
        e?.evento2,
        e?.evento3,
        e?.evento4,
        e?.evento5
      ]);

  @override
  bool isValidKey(Object? o) => o is EventdetailsRecord;
}
