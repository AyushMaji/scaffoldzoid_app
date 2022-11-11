import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:scaffoldzoid_app/apis/api_helper.dart';

class Network {
  final ApiHelper _apiHelper = ApiHelper();

  // add user data in firestore
  Future<DocumentReference<Map<String, dynamic>>> addUserData(
      Map<String, dynamic> data) async {
    return await _apiHelper.createData('users', data);
  }
}
