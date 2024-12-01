import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TypeeventsRecord extends FirestoreRecord {
  TypeeventsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name_event" field.
  String? _nameEvent;
  String get nameEvent => _nameEvent ?? '';
  bool hasNameEvent() => _nameEvent != null;

  // "cod_event" field.
  int? _codEvent;
  int get codEvent => _codEvent ?? 0;
  bool hasCodEvent() => _codEvent != null;

  // "description_event" field.
  String? _descriptionEvent;
  String get descriptionEvent => _descriptionEvent ?? '';
  bool hasDescriptionEvent() => _descriptionEvent != null;

  void _initializeFields() {
    _nameEvent = snapshotData['name_event'] as String?;
    _codEvent = castToType<int>(snapshotData['cod_event']);
    _descriptionEvent = snapshotData['description_event'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('typeevents');

  static Stream<TypeeventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TypeeventsRecord.fromSnapshot(s));

  static Future<TypeeventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TypeeventsRecord.fromSnapshot(s));

  static TypeeventsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TypeeventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TypeeventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TypeeventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TypeeventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TypeeventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTypeeventsRecordData({
  String? nameEvent,
  int? codEvent,
  String? descriptionEvent,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name_event': nameEvent,
      'cod_event': codEvent,
      'description_event': descriptionEvent,
    }.withoutNulls,
  );

  return firestoreData;
}

class TypeeventsRecordDocumentEquality implements Equality<TypeeventsRecord> {
  const TypeeventsRecordDocumentEquality();

  @override
  bool equals(TypeeventsRecord? e1, TypeeventsRecord? e2) {
    return e1?.nameEvent == e2?.nameEvent &&
        e1?.codEvent == e2?.codEvent &&
        e1?.descriptionEvent == e2?.descriptionEvent;
  }

  @override
  int hash(TypeeventsRecord? e) => const ListEquality()
      .hash([e?.nameEvent, e?.codEvent, e?.descriptionEvent]);

  @override
  bool isValidKey(Object? o) => o is TypeeventsRecord;
}
