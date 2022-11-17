import 'dart:io';

import 'package:scaffoldzoid_app/apis/api_helper.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';

class Network {
  final ApiHelper _apiHelper = ApiHelper();

  //* add user data in firestore =====================>
  Future<void> register(Map<String, dynamic> data, String uid) async {
    return await _apiHelper.createData('users', data, uid);
  }

  //* set user data in firestore ================== >
  Future<void> setUserData(
      String collection, String docId, Map<String, dynamic> data) async {
    return await _apiHelper.updateField(collection, docId, data);
  }

  // * upload image to firebase storage ===========>

  Future<String> uploadImage(String path, File image) async {
    final Reference storageReference =
        FirebaseStorage.instance.ref().child(path);
    final UploadTask uploadTask = storageReference.putFile(image);
    final TaskSnapshot downloadUrl = (await uploadTask);
    final String url = (await downloadUrl.ref.getDownloadURL());
    return url;
  }

  // * get user data from firestore ===========>

  Future<Map<String, dynamic>> getUserData(
      String collection, String docId) async {
    final DocumentSnapshot<Map<String, dynamic>> data =
        await _apiHelper.readDataById(collection, docId);
    return data.data()!;
  }

  //* get userdata by email =====================>
  Future<QuerySnapshot<Map<String, dynamic>>> getUserDataByEmail(
      String email) async {
    final QuerySnapshot<Map<String, dynamic>> data =
        await _apiHelper.readDataByField('users', 'email', email);
    return data;
  }

  //* add items in paticular collection ===============>
  Future<void> addProductData(
      String collection, Map<String, dynamic> data, String uid) async {
    return await _apiHelper.createData(collection, data, uid);
  }

  //* delete product data ===============>
  Future<void> deleteProductData(String collection, String id) async {
    return await _apiHelper.deleteData(collection, id);
  }

  // * get all product data by id ===========>
  Future<DocumentSnapshot<Map<String, dynamic>>> getAllProductDataById(
      String collection, String id) async {
    final DocumentSnapshot<Map<String, dynamic>> data =
        await _apiHelper.readDataById(collection, id);
    return data;
  }

  // * product data update by id ===========>
  Future<void> updateProductData(
      String collection, String id, Map<String, dynamic> data) async {
    return await _apiHelper.updateField(collection, id, data);
  }

  //*  get user data by id ===========>
  Future<DocumentSnapshot<Map<String, dynamic>>> getUserDataById(
      String collection, String id) async {
    final DocumentSnapshot<Map<String, dynamic>> data =
        await _apiHelper.readDataById(collection, id);
    return data;
  }
}
