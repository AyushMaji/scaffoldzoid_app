// api helper class to handle api calls and responses from firebase api

import 'package:scaffoldzoid_app/utils/barrel.dart';

class ApiHelper {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //* create a new document =====================>
  Future<void> createData(
      String collection, Map<String, dynamic> data, String docId) async {
    return await _firestore.collection(collection).doc(docId).set(data);
  }

  //* set a new document =======================>
  Future<void> setData(
      String collection, String docId, Map<String, dynamic> data) async {
    return await _firestore.collection(collection).doc(docId).set(data);
  }

  //* read all documents =======================>
  Future<QuerySnapshot> readAllData(String collection) async {
    return await _firestore.collection(collection).get();
  }

  //* read all documents using stream builder =======================>
  Stream<QuerySnapshot> readAllDataStream(String collection) {
    return _firestore.collection(collection).snapshots();
  }

  // * read data by id =======================>
  readDataByIdStream(String collection, String docId) async {
    return _firestore.collection(collection).doc(docId).snapshots();
  }

  //* read by id ================================>
  Future<DocumentSnapshot<Map<String, dynamic>>> readDataById(
      String collection, String id) async {
    return await _firestore.collection(collection).doc(id).get();
  }

  //* update by id  ===================================>
  Future<void> updateData(
      String collection, String id, Map<String, dynamic> data) async {
    await _firestore.collection(collection).doc(id).update(data);
  }

  //* delete by id =====================================>
  Future<void> deleteData(String collection, String id) async {
    await _firestore.collection(collection).doc(id).delete();
  }

  //* delete all Data ==================================>
  Future<void> deleteAllData(String collection) async {
    final QuerySnapshot snapshot =
        await _firestore.collection(collection).get();
    for (final DocumentSnapshot doc in snapshot.docs) {
      await doc.reference.delete();
    }
  }

  //* read by field ===============================>
  Future<QuerySnapshot<Map<String, dynamic>>> readDataByField(
      String collection, String field, String value) async {
    return await _firestore
        .collection(collection)
        .where(field, isEqualTo: value)
        .get();
  }

  //* read by field greater than ==================>
  Future<QuerySnapshot> readDataByFieldGreaterThan(
      String collection, String field, dynamic value) async {
    return await _firestore
        .collection(collection)
        .where(field, isGreaterThan: value)
        .get();
  }

  //* read by field greater than or equal to ======>
  Future<QuerySnapshot> readDataByFieldGreaterThanOrEqual(
      String collection, String field, dynamic value) async {
    return await _firestore
        .collection(collection)
        .where(field, isGreaterThanOrEqualTo: value)
        .get();
  }

  //* read by field less than =====================>
  Future<QuerySnapshot> readDataByFieldLessThan(
      String collection, String field, dynamic value) async {
    return await _firestore
        .collection(collection)
        .where(field, isLessThan: value)
        .get();
  }

  //* read by field less than or equal to =========>
  Future<QuerySnapshot> readDataByFieldLessThanOrEqual(
      String collection, String field, dynamic value) async {
    return await _firestore
        .collection(collection)
        .where(field, isLessThanOrEqualTo: value)
        .get();
  }

  //* read by field in ============================>
  Future<Query<Map<String, dynamic>>> readDataByFieldIn(
      String collection, String field, List<dynamic> value) async {
    return _firestore.collection(collection).where(field, whereIn: value);
  }

  //* read data from multiple collections =========>
  Future<QuerySnapshot> readDataFromMultipleCollections(
      String collection1, String collection2) async {
    return await _firestore
        .collection(collection1)
        .doc(collection2)
        .collection(collection2)
        .get();
  }

  //* update one field in a document by id ======>
  Future<void> updateField(
      String collection, String id, Map<String, dynamic> data) async {
    await _firestore.collection(collection).doc(id).update(data);
  }
}
