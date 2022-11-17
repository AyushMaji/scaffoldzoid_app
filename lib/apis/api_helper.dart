// api helper class to handle api calls and responses from firebase api

import 'package:scaffoldzoid_app/utils/barrel.dart';

class ApiHelper {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //* create a new document =====================>
  Future<void> createData(
      String collection, Map<String, dynamic> data, String docId) async {
    return await _firestore.collection(collection).doc(docId).set(data);
  }

  //* read by id ================================>
  Future<DocumentSnapshot<Map<String, dynamic>>> readDataById(
      String collection, String id) async {
    return await _firestore.collection(collection).doc(id).get();
  }

  //* read by field ===============================>
  Future<QuerySnapshot<Map<String, dynamic>>> readDataByField(
      String collection, String field, String value) async {
    return await _firestore
        .collection(collection)
        .where(field, isEqualTo: value)
        .get();
  }

  //* update one field in a document by id ======>
  Future<void> updateField(
      String collection, String id, Map<String, dynamic> data) async {
    await _firestore.collection(collection).doc(id).update(data);
  }

  //* delete document by id =====================>
  Future<void> deleteData(String collection, String id) async {
    await _firestore.collection(collection).doc(id).delete();
  }
}
