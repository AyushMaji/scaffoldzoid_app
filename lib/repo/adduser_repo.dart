import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';
import 'package:scaffoldzoid_app/apis/api_result.dart';
import 'package:scaffoldzoid_app/apis/network.dart';

class AddUserRepo {
  final Network _network = Network();

  // add user data in firestore
  Future<ApiResult> addUserData(
      String name, String email, String password) async {
    final Map<String, dynamic> data = <String, dynamic>{
      'name': name,
      'email': email,
      'password': password,
    };
    try {
      final DocumentReference<Map<String, dynamic>> result =
          await _network.addUserData(data);
      return ApiResult.success(result);
    } on FirebaseException catch (e) {
      Logger().e(e.message);
      return ApiResult.failure(e.message);
    }
  }
}
